
import json
import DbManage from .manage_db

config = None
myConfig = None
from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.common.exceptions import TimeoutException, NoSuchElementException

class iimgRequest:

    def create_web_driver(self):
        options = webdriver.ChromeOptions()
        options.binary_location = "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
        options.headless = False
        browser = webdriver.Chrome(r'./chromedriver.exe', chrome_options=options)
        return browser

    def __init__(self, url):
        super(iimgRequest, self).__init__()
        self.default_url = url

    def start_request(self):
        # this takes a python object and dumps it to a string which is a JSON
        # representation of that object
        retValue = {
            "image": "",
            "related": [],
            "new_sources": [],
            "keywords": [],
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

        if _config_related_url.find("{}") != -1:
            i = 1
            while True:
                related_url = _config_related_url.format(i)
                try:
                    relate = browser.find_element_by_css_selector(related_url)
                except:
                    break

                related_img_url = relate.get_attribute('gi-carousel-src').split('?s=')
                retValue["related"].append(related_img_url[0])
                i = i + 1

        if _config_new_sources_url.find("{}") != -1:
            i = 1
            while True:
                new_sources_url = _config_new_sources_url.format(i)
                try:
                    new_sources = browser.find_element_by_css_selector(new_sources_url)
                except:
                    break
                if new_sources is None:
                    break
                new_sources_img_url = new_sources.get_attribute('gi-carousel-src').split('?s=')
                retValue["new_sources"].append(new_sources_img_url[0])
                i = i + 1

        keywords = browser.find_elements_by_css_selector(_config_keyword)
        for each_keywords in keywords:
            alink = each_keywords.find_element_by_tag_name('a')
            retValue["keywords"].append(alink.text)
        return retValue

def parseConfig():
    with open('script.config.json') as json_file:
        globals()['config'] = json.load(json_file)
        print(config)
        # for p in data['people']:
        #     print('Name: ' + p['name'])
        #     print('Website: ' + p['website'])
        #     print('From: ' + p['from'])
        #     print('')


def main():
    db = DBManage()
    for each_config in globals()['config']:
        if each_config["source"] == 'istockphoto':
            globals()['myConfig'] = each_config
            for e_url in globals()['myConfig']["urls"]:
                rl = iimgRequest(url=e_url)
                data = rl.start_request()
                db.parseData(data=data)


if __name__ == '__main__':
    parseConfig()
    if config is not None:
        main()
