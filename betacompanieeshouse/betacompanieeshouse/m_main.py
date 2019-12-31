from queue import Queue
from threading import Thread

from scrapy.crawler import CrawlerProcess
from scrapy.utils.project import get_project_settings

from betacompanieeshouse.betacompanieeshouse import CompanieshouseCrawlerSpider


def main():
    # while True:
    #     try:
    #         n_start = int(input("Please enter start integer: "))
    #         n_end = int(input("Please enter end integer: "))
    #         break
    #     except ValueError:
    #         print("No valid integer! Please try again ...")
    print("Great, you successfully entered an integer!")

    n_start = 12207374
    n_end = 12221011
    process = CrawlerProcess()
    # for n_num in range(n_start, n_end):
    #     company_num = n_num

    process.crawl(CompanieshouseCrawlerSpider)
    process.start()


if __name__ == '__main__':
    main()
