from datetime import datetime

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.common.exceptions import TimeoutException, NoSuchElementException
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities


class AnalysisData:
    def create_web_driver(self):
        options = webdriver.ChromeOptions()
        options.binary_location = "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
        options.headless = False
        capa = DesiredCapabilities.CHROME
        capa["pageLoadStrategy"] = "none"

        browser = webdriver.Chrome(r'chromedriver.exe', chrome_options=options, desired_capabilities=capa)
        return browser

    def __init__(self, odds):
        self.default_url = 'http://analyse.7msport.com/{}/index.shtml'.format(odds)
        pass

    def process_score(self, string):
        font_tag_start = string.find('<')
        font_tag_end = string.find('<')
        string
        pass

    def start_request(self):

        browser = self.create_web_driver()
        wait = WebDriverWait(browser, 20)
        browser.get(self.default_url)

        try:
            # wait for search button visible - that means web-loading finished
            wait.until(EC.presence_of_element_located((By.ID, 'tbTeamHistory_A_all')))
            browser.execute_script("window.stop();")
        except TimeoutException:
            print("WebSite Loading Error")
            return

        _live_table = browser.find_element_by_xpath('//*[@id="tbTeamHistory_A_all"]')
        tr_list = _live_table.find_elements(By.TAG_NAME, 'tr')
        lent = len(tr_list)

        now = datetime.now()
        date_time = now.strftime("%m/%d/%Y %H%M%S")
        print(date_time)
        i = 0
        for tr in tr_list:
            classname = tr.get_attribute('class')
            i = i + 1
            if classname.startswith('sjt'):
                _background = tr.find_element_by_xpath(".//td[1]").text
                _date = tr.find_element_by_xpath(".//td[2]").text
                _team1 = tr.find_element_by_xpath(".//td[3]/a").text
                stor_t = tr.find_element_by_xpath(".//td[4]/a")
                _score = tr.find_element_by_xpath(".//td[4]/a").get_attribute('innerHTML')
                _away = tr.find_element_by_xpath(".//td[5]/a").text
                _wl = tr.find_element_by_xpath(".//td[6]/font").text
                _handicap = tr.find_element_by_xpath(".//td[7]").text
                _odds = tr.find_element_by_xpath(".//td[8]/font").text
                _over = tr.find_element_by_xpath(".//td[9]/font").text
                _odds_even = tr.find_element_by_xpath(".//td[10]/font").text
                _ht = tr.find_element_by_xpath(".//td[11]").text
                _overunder = tr.find_element_by_xpath(".//td[12]/font").text
        now = datetime.now()
        date_time = now.strftime("%m/%d/%Y %H%M%S")
        print(date_time)
