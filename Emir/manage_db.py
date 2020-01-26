from .dbconst import *
import mysql.connector


class DbManage:

    def __init__(self):
        try:
            self.cnx = mysql.connector.connect(host=HOST, user=USER, password=PASSWORD, database=DATABASE)
        except mysql.connector.Error as err:
            print('mysql connect err=={}', err)
            return
        pass

    def parseData(self, data):
        # retValue = {
        #     "image": "",
        #     "related": [],
        #     "new_sources": [],
        #     "keywords": [],
        # }
        url_fields = [URL_FIELD["SOURCE"], URL_FIELD["PARENT"], URL_FIELD["STATUS"]]

        # processing for same series
        input_sql = ""
        for related in data["related"]:
            #     "SOURCE": "source_url",
            #     "PARENT": "parent_url",
            #     "STATUS": "status",

            params = ",".join(url_fields)
            parent_url = data["image"]
            values = ",".join(related, parent_url, 0)
            input_sql = input_sql + "INSERT INTO {}({}) VALUES({});".format(TBL_URL, params, values)

        cursor = self.cnx.cursor()
        cursor.execute(input_sql)

        pass
