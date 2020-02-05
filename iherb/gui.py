import sys
import csv
import threading
import time

from PyQt5.QtWidgets import QApplication, QWidget, QLabel, QLineEdit, QPushButton, \
    QTextBrowser, QComboBox, QHBoxLayout, QVBoxLayout, QRadioButton, QGridLayout
from multiprocessing import Process, Manager, freeze_support
from scrapy.crawler import CrawlerProcess
from books.spiders.spider import SpiderSpider
from books.settings import *
from books.spiders.spider import US_Spider
from PyQt5.QtCore import QThread
from datetime import timedelta

from scrapy.utils.project import get_project_settings


class Demo(QWidget):
    def __init__(self):
        super(Demo, self).__init__()
        self.url = "https://www.iherb.com/catalog/brandsaz"
        self.setWindowTitle('iHerb Web Scraping tool')
        self.setFixedSize(300, 200)

        self.gridview = QGridLayout()
        self.label01 = QLabel("USA")
        self.label02 = QLabel("UK")
        self.radiobutton01 = QRadioButton("https://www.iherb.com")
        self.radiobutton01.url = "https://www.iherb.com/catalog/brandsaz"
        self.radiobutton01.setChecked(True)
        self.radiobutton01.toggled.connect(self.onClicked)
        self.radiobutton02 = QRadioButton("https://uk.iherb.com")
        self.radiobutton02.url = "https://uk.iherb.com/catalog/brandsaz"
        self.radiobutton02.toggled.connect(self.onClicked)
        self.status_lbl = QLabel("           Preparing...")
        self.space1 = QLabel("        ")
        self.space2 = QLabel("        ")
        self.space3 = QLabel("        ")
        self.space4 = QLabel("        ")
        self.space5 = QLabel("        ")
        self.space6 = QLabel("        ")
        self.space7 = QLabel("          [TIMER]   ")

        self.crawl_btn = QPushButton('Start', self)
        self.gridview.addWidget(self.space1, 0, 0)
        self.gridview.addWidget(self.label01, 0, 1)
        self.gridview.addWidget(self.radiobutton01, 0, 2)
        self.gridview.addWidget(self.space2, 0, 3)
        self.gridview.addWidget(self.space3, 0, 4)
        self.gridview.addWidget(self.space4, 1, 0)
        self.gridview.addWidget(self.label02, 1, 1)
        self.gridview.addWidget(self.radiobutton02, 1, 2)
        self.gridview.addWidget(self.space5, 1, 3)
        self.gridview.addWidget(self.space6, 1, 4)
        self.gridview.addWidget(self.space7, 4, 2)
        self.gridview.addWidget(self.crawl_btn, 5, 2)
        self.gridview.addWidget(self.status_lbl, 3, 2)

        self.setLayout(self.gridview)
        self.crawl_btn.clicked.connect(self.crawl_slot)
        self.Q = Manager().Queue()
        self.log_thread = LogThread(self)
        self.worker = None

    def onClicked(self):
        radioButton = self.sender()
        if radioButton.isChecked():
            print("Country is %s" % (radioButton.url))
            self.url = radioButton.url
            print(self.url)

    def crawl_slot(self):
        if self.crawl_btn.text() == 'Start':
            ua = "scrapy"
            is_obey = True
            self.status_lbl.setText("           Starting ...")
            self.crawl_btn.setText('Stop')
            if self.url == "https://uk.iherb.com/catalog/brandsaz":
                outfile = open("./uk/uk_iherb.csv", "a", newline="")
                self.worker = EveryWorker(que=self.Q, output=outfile, gui=self)
                self.worker.daemon = True
                self.worker.start()

                self.p = Process(target=crawl, args=(self.Q, ua, is_obey))
                self.p.start()
                self.log_thread.start()

            elif self.url == "https://www.iherb.com/catalog/brandsaz":
                outfile = open("./us/us_iherb.csv", "a", newline="")
                self.worker = EveryWorker(que=self.Q, output=outfile, gui=self)
                self.worker.daemon = True
                self.worker.start()

                self.p = Process(target=crawlaa, args=(self.Q, ua, is_obey))
                self.p.start()
                self.log_thread.start()
            else:
                pass

        else:
            self.status_lbl.setText("           Waiting ...")
            self.p.terminate()
            self.worker.stopWorker()
            self.crawl_btn.setText('Start')
            self.log_thread.terminate()




def crawl(Q, ua, is_obey):
    # CrawlerProcess
    setting = get_project_settings()
    # process = CrawlerProcess(setting)
    process = CrawlerProcess(settings={
        'BOT_NAME':   'books',
        'SPIDER_MODULES': ['books.spiders'],
        'NEWSPIDER_MODULE': 'books.spiders',
        'ROBOTSTXT_OBEY': False,
        'HTTPERROR_ALLOWED_CODES': [404, 520],
        'USER_AGENT': 'books (+http://www.iherb.com)',
        'CONCURRENT_REQUESTS': 8,
        'COOKIES_ENABLED': False,
        'AUTOTHROTTLE_ENABLED': True,
        'AUTOTHROTTLE_START_DELAY': 0.5,
        'AUTOTHROTTLE_MAX_DELAY': 5,
        'AUTOTHROTTLE_TARGET_CONCURRENCY': 16
    }, )

    x = 0
    # num_procs = 3
    # for x in range(num_procs):
    #     process.crawl(SpiderSpider, params={"outputQue": Q, "idx": x})
    start = 0
    end = 27

    process.crawl(SpiderSpider, params={"outputQue": Q, "idx": x,"start": start, "end": end})
    process.start()


# class US_Worker(threading.Thread):
#
#     def __init__(self, Q):
#         super().__init__()
#         self.Q = Q
#
#     def stopWorker(self):
#         self.m_bStop = True
#
#     def run(self):
#
#         pr = US_Selenium(params=self.Q)
#         pr.do_request()
#
#     def terminate(self):
#         pass

def crawlaa(Q, ua, is_obey):

    setting = get_project_settings()
    process = CrawlerProcess(settings={
        'BOT_NAME':   'books',
        'SPIDER_MODULES': ['books.spiders'],
        'NEWSPIDER_MODULE': 'books.spiders',
        'ROBOTSTXT_OBEY': False,
        'HTTPERROR_ALLOWED_CODES': [404, 520],
        'USER_AGENT': 'books (+http://www.iherb.com)',
        'CONCURRENT_REQUESTS': 8,
        'COOKIES_ENABLED': False,
        'AUTOTHROTTLE_ENABLED': True,
        'AUTOTHROTTLE_START_DELAY': 0.5,
        'AUTOTHROTTLE_MAX_DELAY': 5,
        'AUTOTHROTTLE_TARGET_CONCURRENCY': 16
    }, )
    x = 0
    # num_procs = 3
    # for x in range(num_procs):
    #     process.crawl(US_Spider, params={"outputQue": Q, "idx": x})

    start = 0
    end = 27
    # process = CrawlerProcess(setting)
    process.crawl(US_Spider, params={"outputQue": Q, "idx": x, "start": start, "end": end})
    process.start()


class LogThread(QThread):
    def __init__(self, gui):
        super(LogThread, self).__init__()
        self.gui = gui

    def run(self):
        start_time = time.time()
        while True:
            elapsed_time = (int)(time.time() - start_time)
            strTime = "          [{}]   ".format(str(timedelta(seconds=elapsed_time)))
            self.gui.space7.setText(strTime)
            time.sleep(1)
            if self.gui.status_lbl.text() == 'Scrapy End!':
                break


class EveryWorker(threading.Thread):
    def __init__(self, que, output, gui):
        super().__init__()
        self.que = que
        self.writer = csv.writer(output)
        self.m_bStop = False
        self.gui = gui

    def stopWorker(self):
        self.m_bStop = True

    def run(self):
        categoryname = ["product source link", "name of product", "name of brand", "category",
                        "in stock or out of stock", "price", "price per count", "Expiration Date:", "Shipping Weight:",
                        "Product Code:", "UPC Code:", "Package Quantity:", "Dimensions:", "Quantity Discount:",
                        "Product Rank:", "image url-1", "image url-2", "image url-3", "image url-4", "image url-5"]
        self.writer.writerow(categoryname)

        while True:
            try:
                row_data = self.que.get()
                print('put-item---{}', row_data)
                if row_data == 'End':
                    self.gui.status_lbl.setText('Scrapy End!')
                    self.gui.crawl_btn.setText('Start')
                    break
                self.writer.writerow(row_data)
            except:
                if self.m_bStop:
                    self.gui.status_lbl.setText('Scrapy End!')
                    self.gui.crawl_btn.setText('Start')
                    break
                continue


if __name__ == '__main__':
    freeze_support()
    app = QApplication(sys.argv)
    demo = Demo()
    demo.show()
    sys.exit(app.exec())

