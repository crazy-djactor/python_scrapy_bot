# -*- coding: utf-8 -*-
import hashlib
from datetime import datetime
import scrapy
from lxml import html
import requests
import psycopg2

cislo_lv = "Číslo LV:"
obec = "Obec:"
vymera = "Výměra [m"
druh_pozemku = "Druh pozemku:"
budova_s_cislem = "Budova s číslem popisným:"
parcelni_cislo = "Parcelní číslo:"
adresni_mista = "Adresní místa:"
type2_parcel = "Stavba stojí na pozemku:"
zpusob_vyuziti = "Způsob využití:"

class NinjacrawlSpider(scrapy.Spider):
    name = 'ninjacrawl'
    # allowed_domains = ['https://nahlizenidokn.cuzk.cz/']
    start_urls = ['https://nahlizenidokn.cuzk.cz/VyberBudovu.aspx?typ=Stavba']

    def __init__(self, param):
        super(NinjacrawlSpider, self).__init__()
        self.proxy_url = 'http://api.scraperapi.com/?api_key={}&url='.format(param['api_key'])
        self.url = self.proxy_url + 'https://nahlizenidokn.cuzk.cz/VyberBudovu.aspx?typ=Stavba' + '&keep_headers=true'
        self.init_url = self.proxy_url + 'https://nahlizenidokn.cuzk.cz/'
        # self.url = 'https://nahlizenidokn.cuzk.cz/VyberBudovu.aspx?typ=Stavba'
        # self.init_url = 'https://nahlizenidokn.cuzk.cz/'
        self.download_delay = 0.5
        self.NET_SessionId = ''
        # self.spider_row_data =[
        #     {"kod_budovy": "19374704",
        #    "typ_stavebniho_objektu": "budova s číslem popisným",
        #    "cislo_domovni": ["4054"],
        #    "nazev_casti_obce": "Židenice",
        #    "kod_obce": "582786"}]
        self.spider_row_data = param["row_data"]
        self.idx = param["idx"]
        self.connection = param["con"]

    def start_requests(self):
        # url = 'http://api.scraperapi.com/?api_key=706d6b1402b62de7cb68182b51ab6d9b&url=' + self.url
        # for row_data in self.spider_row_data:
        yield scrapy.Request(self.url, method="GET", callback=self.parse)
        # yield scrapy.Request(url, method="POST", callback=self.parse)

    def parse_type_back(self, response, row_data):
        h1 = response.xpath('//*[@id="content"]/h1[1]/text()').extract_first()
        if h1 == 'Informace o stavbě':
            ret_data = self.type2_page(response, row_data["kod_budovy"])
            self.process_postgresql(ret_data, row_data["kod_budovy"])
        else:
            ret_data = self.type1_page(response)
            self.process_postgresql(ret_data, row_data["kod_budovy"])
        return

    def parse_obec_click(self, response, row_data):  # input 4053
        ctl00_scriptManager_TSM = self.checkvalid(
            response.css('input#ctl00_scriptManager_TSM::attr(value)').extract_first())
        # lastfocus = self.checkvalid(response.css('input#__LASTFOCUS::attr(value)').extract_first())
        eventtarget = self.checkvalid(response.css('input#__EVENTTARGET::attr(value)').extract_first())
        eventargument = self.checkvalid(response.css('input#__EVENTARGUMENT::attr(value)').extract_first())
        viewstate = self.checkvalid(response.css('input#__VIEWSTATE::attr(value)').extract_first())
        viewstategenerator = self.checkvalid(response.css('input#__VIEWSTATEGENERATOR::attr(value)').extract_first())
        eventvalidation = self.checkvalid(response.css('input#__EVENTVALIDATION::attr(value)').extract_first())

        ctl00_bodyPlaceHolder_listCastObce = '490415'
        # ctl00_bodyPlaceHolder_listCastObce = self.checkvalid(response.css(
        # 'input#ctl00_bodyPlaceHolder_listCastObce::attr(value)').extract_first())
        for list_option in response.xpath('//*[@id="ctl00_bodyPlaceHolder_listCastObce"]/option'):
            if list_option.xpath('text()').extract_first() == row_data["nazev_casti_obce"]:
                ctl00_bodyPlaceHolder_listCastObce = list_option.attrib['value']
                break

        ctl00_bodyPlaceHolder_listTypBudovy = '1'
        # ctl00_bodyPlaceHolder_listTypBudovy = self.checkvalid(
        #     response.css('input#ctl00_bodyPlaceHolder_listTypBudovy::attr(value)').extract_first())
        for list_option in response.xpath('//*[@id="ctl00_bodyPlaceHolder_listTypBudovy"]/option'):
            if list_option.xpath('text()').extract_first() == row_data["typ_stavebniho_objektu"]:
                ctl00_bodyPlaceHolder_listTypBudovy = list_option.attrib['value']
                break

        ctl00_bodyPlaceHolder_txtUlice = self.checkvalid(
            response.css('input#ctl00_bodyPlaceHolder_txtUlice::attr(value)').extract_first())
        ctl00_bodyPlaceHolder_txtCisloDomovni = self.checkvalid(
            response.css('input#ctl00_bodyPlaceHolder_txtCisloDomovni::attr(value)').extract_first())
        ctl00_bodyPlaceHolder_txtCisloOr = self.checkvalid(
            response.css('input#ctl00_bodyPlaceHolder_txtCisloOr::attr(value)').extract_first())
        # ctl00_bodyPlaceHolder_btnVyhledat = self.checkvalid(
        #     response.css('input#ctl00_bodyPlaceHolder_btnVyhledat::attr(value)').extract_first())
        ctl00_bodyPlaceHolder_btnVyhledat = 'Vyhledat'

        ctl00_bodyPlaceHolder_idAccordionIndex = self.checkvalid(
            response.css('input#ctl00_bodyPlaceHolder_idAccordionIndex::attr(value)').extract_first())

        headers = {
            'Connection': 'keep-alive',
            'Cache-Control': 'max-age=0',
            'Upgrade-Insecure-Requests': '1',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36',
            'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
            'Accept-Encoding': 'gzip, deflate, br',
            'Accept-Language': 'en-US,en;q=0.9',
            'Sec-Fetch-Mode': 'navigate',
            'Sec-Fetch-User': '?1',
            'Sec-Fetch-Site': 'same-origin',
            # 'Host': 'nahlizenidokn.cuzk.cz',
            # 'Referer': 'https://nahlizenidokn.cuzk.cz/VyberBudovu.aspx?typ=Stavba'
        }

        for ctl00_bodyPlaceHolder_txtBudova in row_data["cislo_domovni"]:
            # ctl00_bodyPlaceHolder_txtBudova = '4053'
            # ctl00_bodyPlaceHolder_txtBudova = self.checkvalid(
            #     response.css('input#ctl00_bodyPlaceHolder_txtBudova::attr(value)').extract_first())
            formdata = {
                'ctl00_scriptManager_TSM': ctl00_scriptManager_TSM,
                '__EVENTTARGET': eventtarget,
                '__EVENTARGUMENT': eventargument,
                '__VIEWSTATE': viewstate,
                '__VIEWSTATEGENERATOR': viewstategenerator,
                '__EVENTVALIDATION': eventvalidation,
                'ctl00$bodyPlaceHolder$listCastObce': ctl00_bodyPlaceHolder_listCastObce,  # listcast
                'ctl00$bodyPlaceHolder$listTypBudovy': ctl00_bodyPlaceHolder_listTypBudovy,
                'ctl00$bodyPlaceHolder$txtBudova': str(ctl00_bodyPlaceHolder_txtBudova),  # 4053
                'ctl00$bodyPlaceHolder$txtUlice': ctl00_bodyPlaceHolder_txtUlice,
                'ctl00$bodyPlaceHolder$txtCisloDomovni': ctl00_bodyPlaceHolder_txtCisloDomovni,
                'ctl00$bodyPlaceHolder$txtCisloOr': ctl00_bodyPlaceHolder_txtCisloOr,
                'ctl00$bodyPlaceHolder$btnVyhledat': ctl00_bodyPlaceHolder_btnVyhledat,
                'ctl00$bodyPlaceHolder$idAccordionIndex': ctl00_bodyPlaceHolder_idAccordionIndex
            }
            # cookies = {
            #     'ASP.NET_SessionId': self.NET_SessionId,
            # }
            # response = requests.post(self.url, headers=headers, data=formdata, cookies=cookies)
            # response_text = response.text
            yield scrapy.FormRequest(
                self.url, method="POST",
                formdata={
                    'ctl00_scriptManager_TSM': ctl00_scriptManager_TSM,
                    '__EVENTTARGET': eventtarget,
                    '__EVENTARGUMENT': eventargument,
                    '__VIEWSTATE': viewstate,
                    '__VIEWSTATEGENERATOR': viewstategenerator,
                    '__EVENTVALIDATION': eventvalidation,
                    'ctl00$bodyPlaceHolder$listCastObce': ctl00_bodyPlaceHolder_listCastObce,  # listcast
                    'ctl00$bodyPlaceHolder$listTypBudovy': ctl00_bodyPlaceHolder_listTypBudovy,
                    'ctl00$bodyPlaceHolder$txtBudova': str(ctl00_bodyPlaceHolder_txtBudova),  # 4053
                    'ctl00$bodyPlaceHolder$txtUlice': ctl00_bodyPlaceHolder_txtUlice,
                    'ctl00$bodyPlaceHolder$txtCisloDomovni': ctl00_bodyPlaceHolder_txtCisloDomovni,
                    'ctl00$bodyPlaceHolder$txtCisloOr': ctl00_bodyPlaceHolder_txtCisloOr,
                    'ctl00$bodyPlaceHolder$btnVyhledat': ctl00_bodyPlaceHolder_btnVyhledat,
                    'ctl00$bodyPlaceHolder$idAccordionIndex': ctl00_bodyPlaceHolder_idAccordionIndex
                },
                callback=self.parse_type_back,
                dont_filter=True,
                cb_kwargs=dict(row_data=row_data)
            )
            break

    def checkvalid(self, param):
        if param is None:
            return ''
        return param

    def parse(self, response):  # input 582786

        # row_data = self.spider_row_data
        # self.NET_SessionId = response.cookies['ASP.NET_SessionId']
        # st = str(response.headers.getlist('Set-Cookie')[0])
        # st1 = st.split(";")
        # st2 = st1[0].split("=")
        # self.NET_SessionId = st2[1]
        for row_data in self.spider_row_data:
            # txtobec = '582786'
            txtobec = str(row_data['kod_obce'])
            if not self.first_searchbutton(response, kod_obce=txtobec):
                return

            ctl00_scriptManager_TSM = self.checkvalid(
                response.css('input#ctl00_scriptManager_TSM::attr(value)').extract_first())
            lastfocus = self.checkvalid(response.css('input#__LASTFOCUS::attr(value)').extract_first())
            eventtarget = self.checkvalid(response.css('input#__EVENTTARGET::attr(value)').extract_first())
            eventargument = self.checkvalid(response.css('input#__EVENTARGUMENT::attr(value)').extract_first())
            viewstate = self.checkvalid(response.css('input#__VIEWSTATE::attr(value)').extract_first())
            viewstategenerator = self.checkvalid(response.css('input#__VIEWSTATEGENERATOR::attr(value)').extract_first())
            eventvalidation = self.checkvalid(response.css('input#__EVENTVALIDATION::attr(value)').extract_first())
            btnobec = self.checkvalid(
                response.css('input#ctl00_bodyPlaceHolder_vyberObec_btnObec::attr(value)').extract_first())
            idAccordionIndex = self.checkvalid(
                response.css('input#ctl00_bodyPlaceHolder_idAccordionIndex::attr(value)').extract_first())
            yield scrapy.FormRequest(
                self.url, method="POST",
                formdata={
                    'ctl00_scriptManager_TSM': ctl00_scriptManager_TSM,
                    '__LASTFOCUS': lastfocus,
                    '__EVENTTARGET': eventtarget,
                    '__EVENTARGUMENT': eventargument,
                    '__VIEWSTATE': viewstate,
                    '__VIEWSTATEGENERATOR': viewstategenerator,
                    '__EVENTVALIDATION': eventvalidation,
                    'ctl00$bodyPlaceHolder$vyberObec$txtObec': txtobec,
                    'ctl00$bodyPlaceHolder$vyberObec$btnObec': btnobec,
                    'ctl00$bodyPlaceHolder$idAccordionIndex': idAccordionIndex
                },
                callback=self.parse_obec_click,
                dont_filter=True,
                cb_kwargs=dict(row_data=row_data)
            )

    def first_searchbutton(self, response, kod_obce):
        btn = response.xpath('//*[@id="ctl00_bodyPlaceHolder_vyberObec_lblObec"]')
        if btn is None:
            btn = response.xpath('//*[@id="ctl00_bodyPlaceHolder_vyberObec_txtObec"]')
            if btn is None:
                return False
            str_opt = kod_obce

            # input_5 = browser.xpath('//*[@id="ctl00_bodyPlaceHolder_vyberObec_txtObec"]')
            # input_5.click()
            # input_5.clear()
            # input_5.send_keys(str_opt)
            # sleep(0.1)
            # input_5.send_keys(Keys.ENTER)
        return True

    def type2_page(self, browser, kod_budovy):
        ret_data = {"cislo_lv": '',
                    "vymera": "", "druh_pozemku": "", "budova_s_cislem": "", "adresni_mista": [],
                    "omezeni_vlastnickeho_prava": [], "jine_zapisy": [], "rizeni_cenovy_udaj": "",
                    "zpusob_vyuziti": '',
                    "parcelni_cislo": '', "cislo_jednotky": [],
                    "vlastnicke_pravo": [], "podil": [], "invalid_record": ""}

        tbl = browser.xpath('//table[@summary=\"Atributy stavby\"]//tr')  # list
        for td_ in tbl:
            if td_.xpath('.//td[1]/text()').extract_first() == cislo_lv:
                ret_data["cislo_lv"] = td_.xpath('.//td[2]/a/text()').extract_first()
            elif td_.xpath('.//td[1]/text()').extract_first() == zpusob_vyuziti:
                ret_data["zpusob_vyuziti"] = td_.xpath('.//td[2]/text()').extract_first()
            elif td_.xpath('.//td[1]/text()').extract_first() == type2_parcel:
                for a_ in td_.xpath('.//td[2]//a'):
                    ret_data["parcelni_cislo"] = ret_data["parcelni_cislo"] + " " + a_.xpath('text()').extract_first()

        zRuian = browser.xpath('//table[@summary=\"Informace z RÚIAN\"]//tr')  # list
        for td_ in zRuian:
            if td_.xpath('.//td[1]/text()').extract_first() == 'Adresní místa:':
                ret_data["adresni_mista"].append(td_.xpath('.//td[2]/a/text()').extract_first())

        jednots = browser.xpath('//table[@summary=\"Vymezené jednotky\"]//tr[1]//td[1]/a')
        for jednot in jednots:
            ret_data["cislo_jednotky"].append(jednot.xpath("text()").extract_first())

        # str_jednot = ",".join(ret_data["cislo_jednotky"])
        for jednot in jednots:
            # cislo_jednotky = jednot.xpath("text()").extract_first()
            # ret_data["cislo_jednotky"].append(cislo_jednotky)
            # url = jednot.css('attr(href)').extract_first()
            url = "{}{}&keep_headers=true".format(self.init_url, jednot.xpath('@href').extract_first())
            self.parse_type3(url=url, data={"str_jednot": ret_data["cislo_jednotky"], "kod_budovy": kod_budovy})
        return ret_data

    def parse_type3(self, url, data):
        # response
        page = requests.post(url)
        # response = html.fromstring(page.content)
        response = html.fromstring(page.text)
        kod_budovy1 = data["kod_budovy"]

        ret_data = {
            "kod_budovy": kod_budovy1,
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
        ret_data["cislo_jednotky"] = data["str_jednot"]
        liststr = response.xpath('//table[@summary="Atributy jednotky"]//tr[2]//td[2]/text()')
        if len(liststr) > 0:
            ret_data["typ_jednotky"] = str(liststr[0])

        liststr = response.xpath('//table[@summary="Atributy jednotky"]//tr[6]//td[2]//a/text()')
        if len(liststr) > 0:
            ret_data["cislo_lv_jednotka"] = str(liststr[0])

        liststr = response.xpath('//table[@summary="Atributy jednotky"]//tr[3]//td[2]/text()')
        if len(liststr) > 0:
            ret_data["zpusob_vyuziti_jednotky"] = str(liststr[0])

        liststr = response.xpath('//table[@summary="Atributy jednotky"]//tr[7]//td[2]/text()')
        if len(liststr) > 0:
            ret_data["podil_spol_casti"] = str(liststr[0])

        str_info = "{}{}{}{}{}".format(ret_data["cislo_jednotky"], ret_data["typ_jednotky"],
                                       ret_data["cislo_lv_jednotka"],
                                       ret_data["zpusob_vyuziti_jednotky"], ret_data["podil_spol_casti"])

        ret_data["vlastnicke_pravo"] = []
        pravo_list = response.xpath('//table[@summary="Vlastníci, jiní oprávnění"]//tbody//tr')
        for tr_ in pravo_list[1:]:
            liststr = tr_.xpath('.//td[1]/text()')
            if len(liststr) == 0:
                continue
            ret_data["vlastnicke_pravo"].append(str(liststr[0]))

        ret_data["omezeni_vlastnick_prava"] = []
        pravo_omezeni_list = response.xpath('//table[@class="zarovnat stinuj  "]')

        pravo_omezeni_list = response.xpath('//table[@summary="Omezení vlastnického práva"]//tbody//tr')  # list
        for tr_ in pravo_omezeni_list[1:]:
            liststr = tr_.xpath('.//td[1]/text()')
            if len(liststr) == 0:
                continue
            ret_data["omezeni_vlastnick_prava"].append(str(liststr[0]))

        # ret_data["jine_zapsy"] = browser1.xpath('//*[@id="content"]/div[3]').text
        rizeni_conovy = response.xpath('//table[@summary="Řízení, v rámci kterých byl k nemovitosti zapsán cenový údaj"]//tbody//tr')  # list
        rizeni_conovy_udaj = []
        for tr_ in rizeni_conovy:
            liststr = tr_.xpath('.//td[1]/a/text()')
            if len(liststr) == 0:
                continue
            rizeni_conovy_udaj.append(str(liststr[0]))

        ret_data["rizeni_conovy_udaj"] = ",".join(rizeni_conovy_udaj)
        checksum = hashlib.md5(str_info.encode('utf-8')).hexdigest()
        ret_data["checksum"] = checksum
        self.update_jednotky(ret_data, checksum)

        return ret_data

    def process_emptyField(self, intvalue):
        str_res = ""
        if (intvalue == '') or (intvalue is None):
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
    #         retobj = browser.xpath(xpath)
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
            if ad is not None:
                str_info = str_info + ad
        for om in data_info["omezeni_vlastnickeho_prava"]:
            if om is not None:
                str_info = str_info + om
        for jz in data_info["jine_zapisy"]:
            if jz is not None:
                str_info = str_info + jz
        for cj in data_info["cislo_jednotky"]:
            if cj is not None:
                str_info = str_info + cj
        for vp in data_info["vlastnicke_pravo"]:
            if vp is not None:
                str_info = str_info + vp
        for pd in data_info["podil"]:
            if pd is not None:
                str_info = str_info + pd
        str_ret = hashlib.md5(str_info.encode('utf-8')).hexdigest()
        return str_ret

    def update_vlast(self, vlastinfo, podil, kod_budovy):
        sql = "UPDATE sproject.vlastnici " \
              "SET invalid_record='t' WHERE kod_budovy='{}'".format(kod_budovy)
        try:
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
        except (Exception, psycopg2.DatabaseError) as error:
            print("update_vlast=error=={}=={}".format(kod_budovy, error))

    def update_jednotky(self, ret_data, checksum):
        now = datetime.now()
        date_time = now.strftime("%m/%d/%Y")
        cur = None
        try:

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
                      "SELECT '{}', {}, '{}', {}, '{}', '{}', '{}', 'f', '{}' WHERE NOT EXISTS(" \
                      "SELECT 1 FROM sproject.jednotky WHERE checksum = '{}')".format(
                    ret_data["kod_budovy"],
                    self.process_emptyArray(ret_data["cislo_jednotky"]),
                    ret_data["typ_jednotky"],
                    self.process_emptyField(ret_data["cislo_lv_jednotka"]),
                    ret_data["zpusob_vyuziti_jednotky"],
                    ret_data["podil_spol_casti"],
                    date_time,
                    ret_data["checksum"],
                    ret_data["checksum"]
                )
                cur.execute(sql)
                self.connection.commit()
                cur.close()
        except (Exception, psycopg2.DatabaseError) as error:
            print("update_jednotky=error=={}=={}".format(ret_data["kod_budovy"], error))
        finally:
            cur.close()

    def type1_page(self, browser):
        ret_data = {"cislo_lv": '',
                    "vymera": '',
                    "druh_pozemku": '',
                    "budova_s_cislem": '', "adresni_mista": [],
                    "omezeni_vlastnickeho_prava": [], "jine_zapisy": [], "rizeni_cenovy_udaj": "", "zpusob_vyuziti": "",
                    "parcelni_cislo": '', "cislo_jednotky": [],
                    "vlastnicke_pravo": [], "podil": [], "invalid_record": ""}

        tbl = browser.xpath('//table[@summary=\"Atributy parcely\"]//tr')   # list
        for td_ in tbl:
            if td_.xpath('.//td[1]/text()').extract_first() == cislo_lv:
                ret_data["cislo_lv"] = td_.xpath('.//td[2]/a/text()').extract_first()
            elif td_.xpath('.//td[1]/text()').extract_first()[0:5] == vymera[0:5]:
                ret_data["vymera"] = td_.xpath('.//td[2]/text()').extract_first()
            elif td_.xpath('.//td[1]/text()').extract_first() == druh_pozemku:
                ret_data["druh_pozemku"] = td_.xpath('.//td[2]/text()').extract_first()
            elif td_.xpath('.//td[1]/text()').extract_first() == parcelni_cislo:
                ret_data["parcelni_cislo"] = td_.xpath('.//td[2]/a/text()').extract_first()

        tbl = browser.xpath('//table[@summary=\"Atributy stavby\"]//tr')  # list
        for td_ in tbl:
            if td_.xpath('.//td[1]/text()').extract_first() == budova_s_cislem:
                ret_data["budova_s_cislem"] = td_.xpath('.//td[2]/a/text()').extract_first() + td_.xpath('.//td[2]/text()').extract_first()
            elif td_.xpath('.//td[1]/text()').extract_first() == adresni_mista:
                for ad_mista in td_.xpath('.//td[2]/a'):
                    ret_data["adresni_mista"].append(ad_mista.xpath('text()').extract_first())

        ret_data["vlastnicke_pravo"] = []  # this is list
        ret_data["podil"] = []

        vlast_prava_table = browser.xpath("//table[@summary=\"Vlastníci, jiní oprávnění\"]//tr")
        for td_ in vlast_prava_table[1:]:
            ret_data["vlastnicke_pravo"].append(td_.xpath('.//td[1]/text()').extract_first())
            if td_.xpath('.//td[2]/text()').extract_first() is not None:
                ret_data["podil"].append(td_.xpath('.//td[2]/text()').extract_first())
            else:
                ret_data["podil"].append("")

        ret_data["omezeni_vlastnickeho_prava"] = []
        omeze_rava_table = browser.xpath("//table[@summary=\"Omezení vlastnického práva\"]//tr")
        for td_ in omeze_rava_table[1:]:
            ret_data["omezeni_vlastnickeho_prava"].append(td_.xpath('.//td[1]/text()').extract_first())

        ret_data["jine_zapisy"] = []
        # str_totalinfo = ""

        jine_zapisy_table = browser.xpath("//table[@summary=\"Jiné zápisy\"]//tr")
        for td_ in jine_zapisy_table[1:]:
            ret_data["jine_zapisy"].append(td_.xpath('.//td[1]/text()').extract_first())
            # str_totalinfo = str_totalinfo + td_.xpath('.//td[1]/text()').extract_first()

        ret_data["rizeni_cenovy_udaj"] = ""
        rizeni_cenovy_udaj_table = browser.xpath(
            "//table[@summary=\"Řízení, v rámci kterých byl k nemovitosti zapsán cenový údaj\"]//tr")
        for td_ in rizeni_cenovy_udaj_table:
            ret_data["rizeni_cenovy_udaj"] = td_.xpath('.//td[1]/a[1]/text()').extract_first()
            break
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
                     "SELECT '{}', {}, {}, '{}', '{}', {}, {}, {}, '{}', '{}', {}, '{}', '0', '{}', '{}','{}', " \
                     "'{}' WHERE NOT EXISTS (SELECT 1 FROM sproject.budovy " \
                     "WHERE kod_budovy = '{}' AND " \
                     "check_sum = '{}')".format(kod_budovy, self.process_emptyField(data_info["cislo_lv"]),
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
        cur = None
        try:
            cur = self.connection.cursor()
            cur.execute(sql_update)
            ncount = cur.rowcount
            self.connection.commit()

            if ncount == 0:
                # cur = self.connection.cursor()
                cur.execute(sql_update_invalid)
                self.connection.commit()
                # cur.close()
                # cur = self.connection.cursor()
                cur.execute(sql_insert)
                self.connection.commit()
                cur.close()
                self.update_vlast(vlastinfo=data_info["vlastnicke_pravo"], podil=data_info["podil"],
                                  kod_budovy=kod_budovy)
        except (Exception, psycopg2.DatabaseError) as error:
            print("process_postgresql=error=={}=={}".format(kod_budovy, error))
        finally:
            cur.close()
        # cur.close()
        return
