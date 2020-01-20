from time import sleep

from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.common.exceptions import TimeoutException, NoSuchElementException
import hashlib
from datetime import datetime
import requests
import html2text


class ninja_scrap():

    def __init__(self, row_data, connection):
        # self.outfile = open("SELENIUM_SCRAPY.csv", "w", encoding="utf-8-sig", newline="")
        # self.data_filter = data_filter
        self.row_data = row_data
        self.base_url = 'https://nahlizenidokn.cuzk.cz/'
        self.connection = connection
        super(ninja_scrap, self).__init__()

    def create_web_driver(self):
        options = webdriver.ChromeOptions()
        options.binary_location = "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
        options.headless = False
        browser = webdriver.Chrome(r'./chromedriver.exe', chrome_options=options)
        return browser

    def proxy(self):
        payload = {'api_key': '706d6b1402b62de7cb68182b51ab6d9b',
                   'url': 'https://nahlizenidokn.cuzk.cz/VyberBudovu.aspx?typ=Stavba'}
        r = requests.get('http://api.scraperapi.com', params=payload)
        print(r.text)

    def ubisoft_scrap(self):

        # self.proxy()
        browser = self.create_web_driver()
        default_url = 'https://nahlizenidokn.cuzk.cz/VyberBudovu.aspx?typ=Stavba'
        # url = 'http://api.scraperapi.com/?api_key=706d6b1402b62de7cb68182b51ab6d9b&url=' + default_url

        browser.get(default_url)
        # browser.get(url)

        try:
            # wait for search button visible - that means web-loading finished
            WebDriverWait(browser, 10).until(
                EC.element_to_be_clickable((By.ID, 'ctl00_bodyPlaceHolder_vyberObec_btnObec')))

        except TimeoutException:
            print("WebSite Loading Error")
            return

        btn_search = browser.find_element_by_xpath('//*[@id="ctl00_bodyPlaceHolder_vyberObec_btnObec"]')
        btn_search.click()

        # for i in range(0, len(self.data_filter["kod_obce"])):
        print("[{0}]--{1}".format(self.row_data["kod_budovy"], self.row_data["kod_obce"]))
        if not self.first_searchbutton(browser, self.row_data["kod_obce"]):
            return
        try:
            # wait for search button visible - that means web-loading finished
            WebDriverWait(browser, 10).until(
                EC.element_to_be_clickable((By.ID, 'ctl00_bodyPlaceHolder_listCastObce')))
        except TimeoutException:
            print("WebSite Loading Error")
            return

        select_4 = "//select[@id='ctl00_bodyPlaceHolder_listCastObce']/option[text()='{0}']".format(
            self.row_data["nazev_casti_obce"])
        browser.find_element_by_xpath(select_4).click()

        select_2 = "//select[@id='ctl00_bodyPlaceHolder_listTypBudovy']/option[text()='{0}']".format(
            self.row_data["typ_stavebniho_objektu"])
        browser.find_element_by_xpath(select_2).click()
        domovni_list = self.row_data["cislo_domovni"]
        for str_cislo_domovni in domovni_list:
            input_3 = browser.find_element_by_xpath('//*[@id="ctl00_bodyPlaceHolder_txtBudova"]')
            input_3.click()
            input_3.clear()
            input_3.send_keys(str_cislo_domovni)
            sleep(0.1)
            input_3.send_keys(Keys.ENTER)
            # btn_vyhledat = browser.find_element_by_xpath('//*[@id="ctl00_bodyPlaceHolder_btnVyhledat"]')
            # btn_vyhledat.click()

            try:
                # wait for search button visible - that means web-loading finished
                WebDriverWait(browser, 10).until(EC.presence_of_element_located((By.ID, 'imageMapa')))
            except TimeoutException:
                print("WebSite Loading Error")
                break
            h2 = browser.find_element_by_xpath('//*[@id="content"]/h2[1]')

            if h2.text == 'Vymezené jednotky':
                ret_data = self.type2_page(browser, self.row_data["kod_budovy"])
                self.process_postgresql(ret_data, self.row_data["kod_budovy"])
            else:
                ret_data = self.type1_page(browser)
                # , self.data_filter["kod_budovy"][i])
                self.process_postgresql(ret_data, self.row_data["kod_budovy"])
            browser.back()
            break
        browser.close()

    def format_htmlstring(self, str_html):
        h = html2text.HTML2Text()
        h.ignore_links = False
        res_str = h.handle(str_html)
        return res_str

    def type1_page(self, browser):
        ret_data = {
            "cislo_lv": "",
            "vymera": "",
            "druh_pozemku": "",
            "budova_s_cislem": "",
            "adresni_mista": [],
            "omezeni_vlastnickeho_prava": [],
            "jine_zapisy": [],
            "rizeni_cenovy_udaj": "",
            "zpusob_vyuziti": "",
            "parcelni_cislo": "",
            "cislo_jednotky": [],
            "vlastnicke_pravo": [],  # this is list
            "podil": [],
            "invalid_record": "",
        }

        try:
            ret_data["parcelni_cislo"] = browser.find_element_by_xpath(
                '//*[@id="content"]/table[1]/tbody/tr[1]/td[2]/a').text
            ret_data["cislo_lv"] = browser.find_element_by_xpath('//*[@id="content"]/table[1]/tbody/tr[4]/td[2]/a').text
            ret_data["vymera"] = browser.find_element_by_xpath('//*[@id="content"]/table[1]/tbody/tr[5]/td[2]').text
            ret_data["druh_pozemku"] = browser.find_element_by_xpath(
                '//*[@id="content"]/table[1]/tbody/tr[9]/td[2]').text
            ret_data["budova_s_cislem"] = browser.find_element_by_xpath(
                '//*[@id="content"]/table[2]/tbody/tr[1]/td[2]').text
        except NoSuchElementException:
            pass
        ret_data["adresni_mista"] = []
        try:
            for ad_mista in browser.find_element_by_xpath(
                    '//*[@id="content"]/table[2]/tbody/tr[5]/td[2]').find_elements(By.TAG_NAME, 'a'):
                ret_data["adresni_mista"].append(ad_mista.text)
        except NoSuchElementException:
            pass
        ret_data["vlastnicke_pravo"] = []  # this is list
        ret_data["podil"] = []
        try:
            vlast_prava_table = browser.find_element_by_xpath("//table[@summary=\"Vlastníci, jiní oprávnění\"]")
            for td_ in vlast_prava_table.find_elements(By.TAG_NAME, 'tr')[1:]:
                ret_data["vlastnicke_pravo"].append(td_.find_element_by_xpath('.//td[1]').text)
                ret_data["podil"].append(td_.find_element_by_xpath('.//td[2]').text)
        except NoSuchElementException:
            pass

        ret_data["omezeni_vlastnickeho_prava"] = []
        try:
            omeze_rava_table = browser.find_element_by_xpath("//table[@summary=\"Omezení vlastnického práva\"]")
            for td_ in omeze_rava_table.find_elements(By.TAG_NAME, 'tr')[1:]:
                ret_data["omezeni_vlastnickeho_prava"].append(td_.find_element_by_xpath('.//td[1]').text)
        except NoSuchElementException:
            pass
        ret_data["jine_zapisy"] = []
        str_totalinfo = ""
        try:
            jine_zapisy_table = browser.find_element_by_xpath("//table[@summary=\"Jiné zápisy\"]")
            for td_ in jine_zapisy_table.find_elements(By.TAG_NAME, 'tr')[1:]:
                ret_data["jine_zapisy"].append(td_.find_element_by_xpath('.//td[1]').text)
                str_totalinfo = str_totalinfo + td_.find_element_by_xpath('.//td[1]').text
        except NoSuchElementException:
            pass

        ret_data["rizeni_cenovy_udaj"] = ""
        try:
            rizeni_cenovy_udaj_table = browser.find_element_by_xpath(
                "//table[@summary=\"Řízení, v rámci kterých byl k nemovitosti zapsán cenový údaj\"")
            for td_ in rizeni_cenovy_udaj_table.find_elements(By.TAG_NAME, 'tr'):
                ret_data["rizeni_cenovy_udaj"] = td_.find_element_by_xpath('.//td[1]/a').text
                break
        except NoSuchElementException:
            pass

        return ret_data

    def process_postgresql(self, data_info, kod_budovy):

        check_sum = self.get_hasthstring(data_info=data_info)
        now = datetime.now()
        date_time = now.strftime("%m/%d/%Y")
        sql_update = "UPDATE sproject.budovy " \
                     "SET date_last_ok = '{}', " \
                     "date_last = '{}' " \
                     "WHERE kod_budovy = '{}' AND " \
                     "invalid_record = 'f' AND check_sum = '{}'".format(date_time, date_time, kod_budovy, check_sum)

        sql_update_invalid = "UPDATE sproject.budovy " \
                             "SET invalid_record = 't' " \
                             "WHERE kod_budovy = '{}' AND " \
                             "invalid_record = 'f' AND check_sum <> '{}'".format(kod_budovy,
                                                                                 check_sum)

        sql_insert = "INSERT INTO sproject.budovy(" \
                     "kod_budovy, cislo_lv, " \
                     "vymera, druh_pozemku, budova_s_cislem, adresni_mista, omezeni_vlastnickeho_prava, jine_zapisy, " \
                     "rizeni_cenovy_udaj, zpusob_vyuziti, cislo_jednotky, date_change, invalid_record, " \
                     "parcelni_cislo,check_sum, date_last, date_last_ok) " \
                     "SELECT '{}', '{}', {}, '{}', '{}', {}, {}, {}, '{}', '{}', {}, '{}', '0', '{}', '{}','{}', " \
                     "'{}' WHERE NOT EXISTS (SELECT 1 FROM sproject.budovy " \
                     "WHERE kod_budovy = '{}' AND " \
                     "check_sum = '{}')".format(kod_budovy, data_info["cislo_lv"],
                                                self.process_emptyField(data_info["vymera"]),
                                                data_info["druh_pozemku"],
                                                data_info["budova_s_cislem"],
                                                self.process_emptyArray(data_info["adresni_mista"]),
                                                self.process_emptyArray(data_info["omezeni_vlastnickeho_prava"]),
                                                self.process_emptyArray(data_info["jine_zapisy"]),
                                                data_info["rizeni_cenovy_udaj"],
                                                data_info["zpusob_vyuziti"],
                                                self.process_emptyArray(data_info["cislo_jednotky"]),
                                                date_time,
                                                data_info["parcelni_cislo"],
                                                check_sum,
                                                date_time,
                                                date_time,
                                                kod_budovy,
                                                check_sum)

        cur = self.connection.cursor()
        cur.execute(sql_update)
        ncount = cur.rowcount
        # cur.close()

        if ncount == 0:
            # cur = self.connection.cursor()
            cur.execute(sql_update_invalid)
            self.connection.commit()
            # cur.close()
            # cur = self.connection.cursor()
            cur.execute(sql_insert)
            self.connection.commit()
            cur.close()
            self.update_vlast(vlastinfo=data_info["vlastnicke_pravo"], podil=data_info["podil"], kod_budovy=kod_budovy)
            # self.update_jednotky(jednotky=data_info["cislo_jednotky"], kod_budovy=kod_budovy)
        return

    def type2_page(self, browser, kod_budovy):
        ret_data = {
            "cislo_lv": "",
            "vymera": "",
            "druh_pozemku": "",
            "budova_s_cislem": "",
            "adresni_mista": [],
            "omezeni_vlastnickeho_prava": [],
            "jine_zapisy": [],
            "rizeni_cenovy_udaj": "",
            "zpusob_vyuziti": "",
            "parcelni_cislo": "",
            "cislo_jednotky": [],
            "vlastnicke_pravo": [],  # this is list
            "podil": [],
            "invalid_record": ""
        }

        try:
            ret_data["parcelni_cislo"] = browser.find_element_by_xpath(
                '//*[@id="content"]/table[1]/tbody/tr[6]/td[2]/a').text
        except NoSuchElementException:
            pass

        try:
            ret_data["cislo_lv"] = browser.find_element_by_xpath('//*[@id="content"]/table[1]/tbody/tr[5]/td[2]/a').text
        except NoSuchElementException:
            pass

        try:
            ret_data["zpusob_vyuziti"] = browser.find_element_by_xpath('//*[@id="content"]/table[1]/tbody/tr[8]/td[2]').text
        except NoSuchElementException:
            pass

        try:
            information_btn = browser.find_element_by_xpath('//*[@id="ui-accordion-1-header-0"]')
            information_btn.click()
        except NoSuchElementException:
            pass

        try:
            # wait for search button visible - that means web-loading finished
            WebDriverWait(browser, 10).until(EC.presence_of_element_located((By.ID, 'ui-accordion-1-panel-0')))
        except TimeoutException:
            print("page2 - information button click err")
            return

        ret_data["adresni_mista"] = []
        try:
            zRuian = browser.find_element_by_xpath('//*[@id="ui-accordion-1-panel-0"]/table')  # list
            for td_ in zRuian.find_elements(By.TAG_NAME, 'tr'):
                if td_.find_element_by_xpath('.//td[1]').text == 'Adresní místa:':
                    ret_data["adresni_mista"].append(zRuian.find_element_by_xpath('.//td[2]/a').text)
        except NoSuchElementException:
            pass

        try:
            jednots = browser.find_element_by_xpath('//*[@id="content"]/table[2]/tbody/tr/td').find_elements(
                By.TAG_NAME, 'a')  # list
            i = 0
            jednot_count = len(jednots)

            str_jednot = ""
            for i in range(0, jednot_count):
                jednot = jednots[i]
                str_jednot = str_jednot + jednot.text + ","
                ret_data["cislo_jednotky"].append(jednot.text)

            for i in range(0, jednot_count):
                WebDriverWait(browser, 10).until(EC.presence_of_element_located((By.ID, 'ui-accordion-1-panel-0')))
                jednots = browser.find_element_by_xpath('//*[@id="content"]/table[2]/tbody/tr/td').find_elements(
                    By.TAG_NAME, 'a')  # list
                jednot = jednots[i]
                cislo_jednotky = jednot.text
                jednot.click()
                # browser1 = self.create_web_driver()
                # link_jednotkey = jednot.get_attribute("href")
                # browser.get(link_jednotkey)

                WebDriverWait(browser, 10).until(
                    EC.presence_of_element_located((By.ID, 'ctl00_updatePanelHlaseniOnMasterPage')))
                self.type3_page(browser, cislo_jednotky, str_jednot, kod_budovy)
                browser.back()
        except NoSuchElementException:
            pass
        browser.back()
        return ret_data

    def type3_page(self, browser1, jednotky, str_jednot, kod_budovy):
        ret_data = {
            "kod_budovy": kod_budovy,
            "cislo_jednotky": "",
            "typ_jednotky": "",
            "cislo_lv_jednotka": "",
            "zpusob_vyuziti_jednotky": "",
            "vlastnicke_pravo": [],
            "podil_spol_casti": [],
            "checksum": "",
            "rizeni_conovy_udaj": ""
        }
        str_info = ""
        ret_data["cislo_jednotky"] = str_jednot
        ret_data["typ_jednotky"] = browser1.find_element_by_xpath('//*[@id="content"]/table[1]/tbody/tr[2]/td[2]').text
        ret_data["cislo_lv_jednotka"] = browser1.find_element_by_xpath(
            '//*[@id="content"]/table[1]/tbody/tr[6]/td[2]/a').text
        ret_data["zpusob_vyuziti_jednotky"] = browser1.find_element_by_xpath(
            '//*[@id="content"]/table[1]/tbody/tr[3]/td[2]').text
        ret_data["podil_spol_casti"] = browser1.find_element_by_xpath(
            '//*[@id="content"]/table[1]/tbody/tr[7]/td[2]').text
        str_info = "{}{}{}{}{}".format(ret_data["cislo_jednotky"], ret_data["typ_jednotky"],
                                       ret_data["cislo_lv_jednotka"],
                                       ret_data["zpusob_vyuziti_jednotky"], ret_data["podil_spol_casti"])

        pravo_list_table = browser1.find_element_by_xpath('//*[@id="content"]/table[2]/tbody')
        ret_data["vlastnicke_pravo"] = []

        for tr_ in pravo_list_table.find_elements(By.TAG_NAME, 'tr')[1:]:
            ret_data["vlastnicke_pravo"].append(tr_.find_element_by_xpath('.//td[1]').text)
            # ret_data["podil"].append(tr_.find_element_by_xpath('.//td[2]').text)

        ret_data["omezeni_vlastnick_prava"] = []
        for tr_ in pravo_list_table.find_elements(By.TAG_NAME, 'tr')[1:]:
            ret_data["omezeni_vlastnick_prava"].append(tr_.find_element_by_xpath('.//td').text)

        # ret_data["jine_zapsy"] = browser1.find_element_by_xpath('//*[@id="content"]/div[3]').text

        information_btn = browser1.find_element_by_xpath('//*[@id="ui-accordion-1-header-0"]')
        information_btn.click()

        try:
            # wait for search button visible - that means web-loading finished
            WebDriverWait(browser1, 10).until(EC.presence_of_element_located((By.ID, 'ui-accordion-1-panel-0')))
        except TimeoutException:
            print("page3 - information button click err")
            return

        ret_data["rizeni_conovy_udaj"] = browser1.find_element_by_xpath('//*[@id="ui-accordion-1-panel-0"]').text
        checksum = hashlib.md5(str_info.encode('utf-8')).hexdigest()

        ret_data["cheecksum"] = checksum
        self.update_jednotky(ret_data, checksum)
        return ret_data

    def process_emptyField(self, intvalue):
        str_res = ""
        if intvalue == '':
            str_res = "NULL"
        else:
            str_res = intvalue
        return str_res

    def process_emptyArray(self, array):
        str_res = ""
        if len(array) == 0:
            str_res = "array[]::text[]"
        else:
            str_res = "ARRAY {}".format(array)
        return str_res

    # def find_element_passexception(self, browser, xpath):
    #     retobj = None
    #     try:
    #         retobj = browser.find_element_by_xpath(xpath)
    #     except NoSuchElementException:
    #         return None
    #     return retobj

    def get_hasthstring(self, data_info):
        str_info = "{}{}{}{}{}{}{}".format(
            data_info["cislo_lv"],
            data_info["vymera"],
            data_info["druh_pozemku"],
            data_info["budova_s_cislem"],
            data_info["rizeni_cenovy_udaj"],
            data_info["zpusob_vyuziti"],
            data_info["parcelni_cislo"])
        for ad in data_info["adresni_mista"]:
            str_info = str_info + ad
        for om in data_info["omezeni_vlastnickeho_prava"]:
            str_info = str_info + om
        for jz in data_info["jine_zapisy"]:
            str_info = str_info + jz
        for cj in data_info["cislo_jednotky"]:
            str_info = str_info + cj
        for vp in data_info["vlastnicke_pravo"]:
            str_info = str_info + vp
        for pd in data_info["podil"]:
            str_info = str_info + pd
        str_ret = hashlib.md5(str_info.encode('utf-8')).hexdigest()
        return str_ret

    def update_vlast(self, vlastinfo, podil, kod_budovy):
        sql = "UPDATE sproject.vlastnici " \
              "SET invalid_record='t' WHERE kod_budovy='{}'".format(kod_budovy)
        cur = self.connection.cursor()
        cur.execute(sql)
        # cur.close
        self.connection.commit()
        now = datetime.now()
        date_time = now.strftime("%m/%d/%Y")
        for i in range(0, len(vlastinfo)):
            # cur == self.connection.cursor()
            sql = "INSERT INTO sproject.vlastnici(kod_budovy, vlastnicke_pravo, podil, date_change, invalid_record) " \
                  "VALUES ('{}', '{}', '{}', '{}', 'f')".format(
                kod_budovy, vlastinfo[i], podil[i], date_time)
            cur.execute(sql)
        self.connection.commit()
        cur.close()

    def update_jednotky(self, ret_data, checksum):
        now = datetime.now()
        date_time = now.strftime("%m/%d/%Y")

        sql_update = "UPDATE sproject.jednotky SET date_change = '{}' WHERE invalid_record = 'f' AND kod_budovy='{}' " \
                     "AND checksum = '{}'".format(date_time, ret_data["kod_budovy"], checksum)
        cur = self.connection.cursor()
        cur.execute(sql_update)
        self.connection.commit()
        ncount = cur.rowcount

        if ncount == 0:
            sql_update = "UPDATE sproject.jednotky SET invalid_record = 't' WHERE invalid_record = 'f' AND kod_budovy='{}' " \
                         "AND checksum <> '{}'".format(ret_data["kod_budovy"], checksum)
            cur.execute(sql_update)
            self.connection.commit()
            # cur.close()
            sql = "INSERT INTO sproject.jednotky(kod_budovy, cislo_jednotky, typ_jednotky, " \
                  "cislo_lv_jednotka, zpusob_vyuziti_jednotky, podil_spol_casti, date_change, invalid_record, checksum) " \
                  "SELECT '{}', '{}', '{}', '{}', '{}', '{}', '{}', 'f', '{}' WHERE NOT EXISTS(" \
                  "SELECT 1 FROM sproject.jednotky WHERE checksum = '{}')".format(
                ret_data["kod_budovy"],
                ret_data["cislo_jednotky"],
                ret_data["typ_jednotky"],
                ret_data["cislo_lv_jednotka"],
                ret_data["zpusob_vyuziti_jednotky"],
                ret_data["podil_spol_casti"],
                date_time,
                ret_data["checksum"],
                ret_data["checksum"]
            )
            cur.execute(sql)
            self.connection.commit()
            cur.close()

    def first_searchbutton(self, browser, kod_obce):
        try:
            # wait for search button visible - that means web-loading finished
            WebDriverWait(browser, 1).until(
                EC.visibility_of_element_located((By.ID, 'ctl00_bodyPlaceHolder_vyberObec_lblObec')))
        except TimeoutException:
            try:
                # wait for search button visible - that means web-loading finished
                WebDriverWait(browser, 10).until(
                    EC.element_to_be_clickable((By.ID, 'ctl00_bodyPlaceHolder_vyberObec_txtObec')))
            except TimeoutException:
                print("WebSite Loading Error")
                return False
            str_opt = kod_obce
            input_5 = browser.find_element_by_xpath('//*[@id="ctl00_bodyPlaceHolder_vyberObec_txtObec"]')
            input_5.click()
            input_5.clear()
            input_5.send_keys(str_opt)
            sleep(0.1)
            input_5.send_keys(Keys.ENTER)
        return True
