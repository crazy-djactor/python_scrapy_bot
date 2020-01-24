import csv

import scrapy


class CompanieshouseCrawlerSpider(scrapy.Spider):
    name = 'companieshouse_crawler'
    allowed_domains = ['beta.companieshouse.gov.uk']
    start_urls = ['https://beta.companieshouse.gov.uk/']

    def __init__(self):
        super(CompanieshouseCrawlerSpider, self).__init__()
        self.infile = open("acompanieshouse.csv", "w", newline="")

    def start_requests(self):
        for company_num in range(12207374, 12221011):
            url = "https://beta.companieshouse.gov.uk/company/{0}/officers".format(company_num)
            yield scrapy.Request(url, callback=self.parse, meta={"company_num": company_num})


    def parse(self, response):
        company_num = response.meta["company_num"]
        officer_name_a = response.xpath("//span[@id='officer-name-1']")
        relative_url = officer_name_a.xpath(".//a/@href").extract()
        officer_name = officer_name_a.xpath(".//a/text()").extract()
        meta_data = {"company_num": company_num,
                     "officer_name": officer_name}
        print("company_num={0} officer_name={1}".format(company_num, officer_name))

        officer_link = response.urljoin(relative_url[0].strip())

        print("url = {0}".format(officer_link))
        yield scrapy.Request(officer_link, callback=self.parse_link,
                             meta=meta_data)

    def parse_link(self, response):
        company_num = response.meta["company_num"]
        officer_name = response.meta["officer_name"]
        company_addr = response.xpath("//dd[@id='correspondence-address-value-1']/text()").extract()
        writer = csv.writer(self.infile)
        writer.writerow([company_num, officer_name, company_addr])
