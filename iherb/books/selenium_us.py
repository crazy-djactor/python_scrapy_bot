import time

import scrapy
from selenium import webdriver
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By

from lxml import html
import requests

class US_Selenium:

    def __init__(self, params):
        super(US_Selenium, self).__init__()
        self.que = params

    def create_web_driver(self):
        options = webdriver.ChromeOptions()
        options.binary_location = "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
        options.headless = False
        browser = webdriver.Chrome(r'books/chromedriver.exe', chrome_options=options)
        return browser

    def select_region(self, browser):
        country_wrap = browser.find_element_by_xpath('//div[contains(@class,"selected-country-wrapper")]')
        country_wrap.click()
        country_sel_input = browser.find_element_by_xpath('//div[contains(@class,"select-country")]')
        input_country = country_sel_input.find_element_by_xpath('.//input[2]')
        input_country.click()
        country_s = 'US'
        # for str_opt in country_s:
        input_country.send_keys(country_s)
        time.sleep(0.1)
        input_country.send_keys(Keys.ENTER)
        save_selection = browser.find_element_by_xpath('//div[contains(@class,"no-script-show")]/button[1]')
        save_selection.click()

    def do_request(self):

        # self.proxy()
        browser = self.create_web_driver()
        default_url = 'https://www.iherb.com/catalog/brandsaz'
        wait = WebDriverWait(browser, 10)

        browser.get(default_url)

        try:
            # wait for search button visible - that means web-loading finished
            wait.until(
                EC.presence_of_element_located((By.CLASS_NAME, 'item-row-borders')))
        except TimeoutException:
            print("WebSite Loading Error")
            return

        self.select_region(browser)

        brands = browser.find_elements(By.XPATH, '//div[contains(@class,"item-row-borders")]')
        for eachbrand01 in brands:
            eachbrand01_aa = eachbrand01.find_elements(By.XPATH, './/div/div')
            for eachbrand02 in eachbrand01_aa:
                eachbrand02_aa = eachbrand02.find_elements(By.XPATH, './/ul/li')
                for eachbrand03 in eachbrand02_aa:
                    eachbrand = eachbrand03.find_element_by_xpath('.//a')
                    eachbrandurl = eachbrand.get_attribute('href')
                    ncookies = browser.get_cookies()

                    s = requests.Session()
                    for cookie in ncookies:
                        s.cookies.set(cookie['name'], cookie['value'])

                    page = requests.get(eachbrandurl, cookies=s.cookies)
                    # response = html.fromstring(page.content)
                    response = html.fromstring(page.text)
                    self.url_parse(response)

    def url_parse(self, response):
        url_list = []
        products = response.find_elements(By.XPATH, '//div[@class="product ga-product"]')
        # for eachpro in products:
        #     product_url = eachpro.xpath('.//div[contains(@class,"product-inner-wide")]/div/a/@href').extract_first()
        #     yield scrapy.Request(product_url, callback=self.datascrapy, dont_filter=True)