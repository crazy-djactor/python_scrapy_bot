import time
from datetime import datetime

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.common.exceptions import TimeoutException, NoSuchElementException
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities


class LiveScore:
    def create_web_driver(self):
        options = webdriver.ChromeOptions()
        options.binary_location = "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
        options.headless = True
        capa = DesiredCapabilities.CHROME
        capa["pageLoadStrategy"] = "none"

        browser = webdriver.Chrome(r'chromedriver.exe', chrome_options=options, desired_capabilities=capa)
        # browser = webdriver.Chrome(r'chromedriver.exe', chrome_options=options)
        return browser

    def __init__(self):
        self.default_url = 'http://live2.7msport.com/default_en.aspx?view=all&line=no'
        self.default_url = 'https://www.therealreal.com/products?first=120&page=1'

        pass

    def start_request(self):

        browser = self.create_web_driver()
        wait = WebDriverWait(browser, 10)
        browser.get(self.default_url)

        try:
            # wait for search button visible - that means web-loading finished
            wait.until(EC.presence_of_element_located((By.ID, 'live_Table')))
            browser.execute_script("window.stop();")
        except TimeoutException:
            print("WebSite Loading Error")
            return

        _live_table = browser.find_element_by_xpath('//*[@id="live_Table"]')
        tr_list = _live_table.find_elements(By.TAG_NAME, 'tr')
        lent = len(tr_list)

        now = datetime.now()
        date_time = now.strftime("%m/%d/%Y %H%M%S")
        print(date_time)
        i = 0
        for tr in tr_list:
            id = tr.get_attribute('id')
            i = i + 1
            if id.startswith('bh'):
                _background = tr.find_element_by_xpath(".//td[2]")
                _time = tr.find_element_by_xpath(".//td[3]").text
                _home = tr.find_element_by_xpath(".//td[5]/a").text
                _score = "{} {}".format(tr.find_element_by_xpath(".//td[6]/a/span[1]").text,
                                        tr.find_element_by_xpath(".//td[6]/a/span[2]").text)
                _away = tr.find_element_by_xpath(".//td[7]/a").text
        now = datetime.now()
        date_time = now.strftime("%m/%d/%Y %H%M%S")
        print(date_time)