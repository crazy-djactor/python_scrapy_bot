import json
import threading
import time

from manage_db import DbManage

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.common.exceptions import TimeoutException, NoSuchElementException

config = None
myConfig = None


class iimgRequest:
    def create_web_driver(self):
        options = webdriver.ChromeOptions()
        options.binary_location = "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
        options.headless = True
        browser = webdriver.Chrome(r'chromedriver.exe', chrome_options=options)
        return browser

    def __init__(self, url):
        super(iimgRequest, self).__init__()
        self.default_url = url
        self.home_url = "https://www.istockphoto.com"

    def start_request(self):
        # this takes a python object and dumps it to a string which is a JSON
        # representation of that object
        retValue = {
            "image": "",       # url of current page
            "related": [],     # urls of view all images
            "new_sources": [], # urls of similar images
            "keywords": [],
            "image_url": ""       # url of image
        }
        _config_image = globals()['myConfig']["config"]["images"]
        _config_related_url = globals()['myConfig']["config"]["related_url"]
        _config_new_sources_url = globals()['myConfig']["config"]["new_sources_url"]
        _config_keyword = globals()['myConfig']["config"]["keywords"]

        browser = self.create_web_driver()
        browser.get(self.default_url)


        try:
            # wait for search button visible - that means web-loading finished
            WebDriverWait(browser, 10).until(
                EC.element_to_be_clickable((By.ID, 'download-button')))

        except TimeoutException:
            print("WebSite Loading Error")
            return

        img = browser.find_element_by_css_selector(_config_image)

        retValue["image_url"] = img.get_attribute('src')
        retValue["image"] = self.default_url
        if _config_related_url.find("{}") != -1:
            i = 1
            while True:
                related_url = _config_related_url.format(i)
                try:
                    relate = browser.find_element_by_css_selector(related_url)
                    parent_rel = relate.find_element_by_xpath("..")
                    # related_img_url = relate.get_attribute('gi-carousel-src').split('?s=')
                    related_img_url = parent_rel.get_attribute('href')          # related link url
                    retValue["related"].append(related_img_url)
                except:
                    break
                i = i + 1

        if _config_new_sources_url.find("{}") != -1:
            i = 1
            while True:
                new_sources_url = _config_new_sources_url.format(i)
                try:
                    new_sources = browser.find_element_by_css_selector(new_sources_url)
                    parent_rel = new_sources.find_element_by_xpath("..")
                    new_sources_img_url = parent_rel.get_attribute('href')
                    retValue["new_sources"].append(new_sources_img_url)
                except:
                    break
                if new_sources is None:
                    break
                i = i + 1

        keywords = browser.find_elements_by_css_selector(_config_keyword)
        for each_keywords in keywords:
            alink = each_keywords.find_element_by_tag_name('a')
            retValue["keywords"].append(alink.text)
        browser.close()
        return retValue

def parseConfig():
    with open('script.config.json') as json_file:
        globals()['config'] = json.load(json_file)
        # print(config)
        # for p in data['people']:
        #     print('Name: ' + p['name'])
        #     print('Website: ' + p['website'])
        #     print('From: ' + p['from'])
        #     print('')


class EveryWorker(threading.Thread):
    def __init__(self, t_id, lock):
        super().__init__()
        self.t_id = t_id
        self.db = DbManage()
        self._key_lock = lock

    def run(self):
        while True:
            one_row = self.db.loopLogic(lock=self._key_lock)
            if one_row is None:
                time.sleep(0.1)
                continue
            pk = one_row[0]
            source_url = one_row[1]
            rl = iimgRequest(url=source_url)
            data = rl.start_request()
            self.db.parseData(data=data, lock=self._key_lock, pk=pk)


def main():
    db = DbManage()
    _key_lock = threading.Lock()
    for each_config in globals()['config']:
        if each_config["source"] == 'istockphoto':
            globals()['myConfig'] = each_config
            # break
            for e_url in globals()['myConfig']["urls"]:
                rl = iimgRequest(url=e_url)
                data = rl.start_request()
                db.parseData(data=data, lock=_key_lock, pk=-1)
                # break

    # while True:
    #     onerow = db.loopLogic()
    #     if onerow is None:
    #         break
    #     pk = onerow[0]
    #     source_url = onerow[1]
    #     rl = iimgRequest(url=source_url)
    #     data = rl.start_request()
    #     db.parseData(data=data)

    num_procs = 1
    workers = []
    for x in range(num_procs):
        worker = EveryWorker(t_id=x, lock=_key_lock)
        # Setting daemon to True will let the main thread exit even though the workers are blocking
        worker.daemon = True
        workers.append(worker)
        worker.start()

    for worker in workers:
        worker.join()


if __name__ == '__main__':
    parseConfig()
    if config is not None:
        main()
