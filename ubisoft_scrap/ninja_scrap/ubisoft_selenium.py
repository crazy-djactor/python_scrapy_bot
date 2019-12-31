from time import sleep

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.common.exceptions import TimeoutException

import csv
import requests
import html2text

class Ubisoft_Selenium():

    def __init__(self, data_filter):
        self.outfile = open("SELENIUM_SCRAPY_ubisoft.csv", "w", encoding="utf-8-sig", newline="")
        self.data_filter = data_filter
        super(Ubisoft_Selenium, self).__init__()

    def create_web_driver(self):
        options = webdriver.ChromeOptions()
        options.binary_location = "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
        browser = webdriver.Chrome(r'./chromedriver.exe', chrome_options=options)
        return browser

    def ubisoft_scrap(self):
        browser = self.create_web_driver()
        default_url = 'https://www.ubisoft.com/en-us/careers/search.aspx'
        browser.get(default_url)

        try:
            # wait for search button visible - that means web-loading finished
            WebDriverWait(browser, 10).until(EC.element_to_be_clickable((By.ID, 'sr-widget-search')))

        except TimeoutException:
            print("WebSite Loading Error")
            return

        boardh3 = browser.find_element_by_xpath('//*[@id="sr-widget-search-filters-container"]/h3')
        boardh3.click()
        input_expertise = browser.find_element_by_xpath('//*[@id="sr-widget-search-filters-container"]/div[2]/div/div/input')
        for str_opt in self.data_filter["area_expertise"]:
            input_expertise.click()
            input_expertise.send_keys(str_opt)
            sleep(0.1)
            input_expertise.send_keys(Keys.ENTER)


        boardh3.click()
        input_contract = browser.find_element_by_xpath('//*[@id="sr-widget-search-filters-container"]/div[4]/div/div/input')
        for str_opt in self.data_filter["type_contract"]:
            input_contract.click()
            input_contract.send_keys(str_opt)
            sleep(0.1)
            input_contract.send_keys(Keys.ENTER)

        boardh3.click()
        country_opt = browser.find_element_by_xpath('//*[@id="sr-widget-search-filters-container"]/div[6]/div/div/input')
        for str_opt in self.data_filter["country_opt"]:
            country_opt.click()
            country_opt.send_keys(str_opt)
            sleep(0.1)
            country_opt.send_keys(Keys.ENTER)

        boardh3.click()
        city_opt = browser.find_element_by_xpath('//*[@id="sr-widget-search-filters-container"]/div[5]/div/div/input')
        for str_city in self.data_filter["city_opt"]:
            city_opt.click()
            city_opt.send_keys(str_city)
            sleep(0.1)
            city_opt.send_keys(Keys.ENTER)

        boardh3.click()
        btn_search = browser.find_element_by_xpath('//*[@id="sr-widget-search"]')
        btn_search.click()

        row_list = browser.find_element_by_xpath('//*[@id="sr-widget-job-grid"]/table/tbody')

        posting_url = 'https://api.smartrecruiters.com/v1/companies/Ubisoft2/postings/'
        writer = csv.writer(self.outfile)
        writer.writerow(["JOB_TITLE", "JOB_FAMILY", "JOB_LOCATION", "JOB_POSTING_URL", "JOB_COMPANY_DESC",
                         "JOB_DESCRIPTION", "JOB_QUALIFICATIONS", "JOB_ADDITIONAL_INFO"])

        for row in row_list.find_elements_by_xpath(".//tr"):
            for td_ in row.find_elements_by_xpath('.//td'):
                a_ref = td_.find_element_by_link_text(td_.text).get_attribute('href')
                n_start = a_ref.find('sr-post-id=')
                n_end = a_ref.find('&', n_start)
                postid = a_ref[n_start + len('sr-post-id='): n_end]
                rurl = "{0}{1}".format(posting_url, postid)
                response = requests.get(
                    rurl)
                res_data = response.json()

                job_posting_url = rurl

                for custom_field in res_data["customField"]:
                    if custom_field["fieldLabel"] == "Department":
                        job_department = custom_field["valueLabel"]
                    elif custom_field["fieldLabel"] == "Country":
                        job_country = custom_field["valueLabel"]
                    elif custom_field["fieldLabel"] == "Job Family":
                        job_family = custom_field["valueLabel"]

                job_title = "{0}({1})".format(res_data["name"], job_department)

                job_location = "{0}, {1}".format(res_data["location"]["city"], job_country)

                sections = res_data["jobAd"]["sections"]
                str_companyDescription = self.format_htmlstring(sections["companyDescription"]["text"])

                str_jobDescription = self.format_htmlstring(sections["jobDescription"]["text"])

                str_qualifications = self.format_htmlstring(sections["qualifications"]["text"])

                str_additionalInformation = self.format_htmlstring(sections["additionalInformation"]["text"])

                writer.writerow([job_title, job_family, job_location, job_posting_url, str_companyDescription,
                                 str_jobDescription, str_qualifications, str_additionalInformation])
                break
        self.outfile.close()

    def format_htmlstring(self, str_html):
        h = html2text.HTML2Text()
        h.ignore_links = False
        res_str = h.handle(str_html)
        return res_str
