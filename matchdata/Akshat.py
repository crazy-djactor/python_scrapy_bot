import csv
import requests


class Akshat:

    def __init__(self):
        self.default_url = "https://www.therealreal.com/products?first=120&page=1"
        self.outfile = open("REQUEST_ubisoft.csv", "w", encoding="utf-8-sig", newline="")

    def start_request(self):
        # this takes a python object and dumps it to a string which is a JSON
        # representation of that object
        offset = 0
        while (True):
            # url = self.default_url + str(offset)
            page = requests.get(
                self.default_url
            )
            from lxml import html
            response = html.fromstring(page.text)

            # data = response.json()
            # if len(data["content"]) == 0:
            #     break
            # writer = csv.writer(self.outfile)
            # for data_job in data["content"]:
            #     job_title = data_job["name"]
            #     job_family = data_job["customField"][1]["valueLabel"]
            #     job_city = data_job["location"]["city"]
            #     job_country = data_job["customField"][2]["valueLabel"]
            #     job_location = "{0},{1}".format(job_city,job_country)
            #     writer.writerow([job_title, job_family, job_location])
            # offset = offset + 100

        # self.outfile.close()
