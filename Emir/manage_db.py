import hashlib

from dbconst import DB_CONFIG, URL_FIELD, IMAGE_FIELD, TAGS_FIELD
import mysql.connector
from mysql.connector import pooling

class DbManage:
    def __init__(self):
        try:
            # self.pool = mysql.connector.pooling.MySQLConnectionPool(pool_name="pynative_pool",
            #                                                               pool_size=1,
            #                                                               pool_reset_session=True,
            #                                                                host=DB_CONFIG["HOST"],
            #                                                                user=DB_CONFIG["USER"],
            #                                                                password=DB_CONFIG["PASSWORD"],
            #                                                                database=DB_CONFIG["DATABASE"])

            self.cnx = mysql.connector.connect(host=DB_CONFIG["HOST"], user=DB_CONFIG["USER"],
                                               password=DB_CONFIG["PASSWORD"], database=DB_CONFIG["DATABASE"])
        except mysql.connector.Error as err:
            print('mysql connect err=={}', err)
            return
        pass

    def __del__(self):
        self.cnx.disconnect()


    def parseData(self, data, lock, pk):
        # retValue = {
        #     "image": "",
        #     "related": [],
        #     "new_sources": [],
        #     "keywords": [],
        # }
        # processing for same series

        with lock:
            print(data)
            try:
                if pk != -1 and data["image_url"] == '':
                    cursor = self.cnx.cursor()
                    update_sql = "UPDATE {} SET {}={} WHERE {}='{}'".format(DB_CONFIG["TBL_URL"], URL_FIELD["STATUS"],
                                                                            1, URL_FIELD["PK"], pk)
                    cursor.execute(update_sql)
                    self.cnx.commit()
                    cursor.close()
                    return

                cursor = self.cnx.cursor()
                checksum = hashlib.md5(data["image"].encode('utf-8')).hexdigest()
                query = "SELECT {} FROM {} WHERE {}='{}' LIMIT 1".format(URL_FIELD["PK"], DB_CONFIG["TBL_URL"], URL_FIELD["CHECKSUM"], checksum)
                cursor.execute(query)
                url_fields = [URL_FIELD["SOURCE"], URL_FIELD["PARENT"], URL_FIELD["STATUS"], URL_FIELD["CHECKSUM"]]
                params = ",".join(url_fields)
                current_pk = 0
                result = cursor.fetchone()
                if cursor.rowcount == 0:
                    cursor.close()
                    cursor = self.cnx.cursor()
                    input_sql = "INSERT INTO {}({}) SELECT '{}', '{}', {}, '{}' WHERE NOT EXISTS(SELECT 1 FROM {} WHERE " \
                                "{}='{}')".format(DB_CONFIG["TBL_URL"], params, data["image"], '', 1, checksum, DB_CONFIG["TBL_URL"], URL_FIELD["CHECKSUM"], checksum)
                    cursor.execute(input_sql)
                    self.cnx.commit()
                    pk = cursor.lastrowid
                    cursor.close()
                else:
                    pk = result[0]
                    cursor.close()      # Setting as PROCESSING
                    cursor = self.cnx.cursor()
                    update_sql = "UPDATE {} SET {}={} WHERE {}='{}'".format(DB_CONFIG["TBL_URL"], URL_FIELD["STATUS"], 2,
                                                                            URL_FIELD["CHECKSUM"], checksum)
                    cursor.execute(update_sql)
                    self.cnx.commit()
                    cursor.close()

                image_tbl_sql = "INSERT INTO {}({}, {}, {}) SELECT {}, '{}', {} WHERE NOT EXISTS(SELECT 1 FROM {} WHERE " \
                                "{}={})".format(DB_CONFIG["TBL_IMAGE"], IMAGE_FIELD["ORG_SRCPK"], IMAGE_FIELD["LARGE"],
                                                IMAGE_FIELD["STATUS"], pk, data["image_url"], 0, DB_CONFIG["TBL_IMAGE"],
                                                IMAGE_FIELD["ORG_SRCPK"], pk)
                cursor = self.cnx.cursor()
                cursor.execute(image_tbl_sql)
                self.cnx.commit()
                cursor.close()

                tag_string = " ".join(data["keywords"])
                tag_tbl_sql = "INSERT INTO {} ({}, {}, {}) SELECT {}, '{}', '{}' WHERE NOT EXISTS(SELECT 1 FROM {} " \
                              "WHERE {}={})".format(DB_CONFIG["TBL_TAGS"], TAGS_FIELD["PK"], TAGS_FIELD["LARGE"],
                                                    TAGS_FIELD["TAGS"], pk, data["image_url"], tag_string,
                                                    DB_CONFIG["TBL_TAGS"], TAGS_FIELD["PK"], pk)
                cursor = self.cnx.cursor()
                cursor.execute(tag_tbl_sql)
                self.cnx.commit()
                cursor.close()

                url_fields = [URL_FIELD["SOURCE"], URL_FIELD["PARENT"], URL_FIELD["STATUS"], URL_FIELD["CHECKSUM"]]
                params = ",".join(url_fields)
                cursor = self.cnx.cursor()
                for related in data["related"]:
                    parent_url = data["image"]
                    checksum = hashlib.md5(related.encode('utf-8')).hexdigest()
                    # values_str = (related, parent_url, 0, checksum)
                    # update_sql = "UPDATE {} SET {}={} WHERE {}='{}'".format(DB_CONFIG["TBL_URL"], URL_FIELD["STATUS"], 1,
                    #                                                         URL_FIELD["CHECKSUM"], checksum)
                    # cursor.execute(update_sql)
                    # if cursor.rowcount == 0:
                    input_sql = "INSERT INTO {}({}) SELECT '{}','{}',{},'{}' WHERE NOT EXISTS(SELECT 1 FROM {} WHERE " \
                                "{}='{}')".format(DB_CONFIG["TBL_URL"], params, related, parent_url, 0, checksum,
                                                  DB_CONFIG["TBL_URL"], URL_FIELD["CHECKSUM"], checksum)
                    cursor.execute(input_sql)

                for new_src in data["new_sources"]:
                    parent_url = ''
                    checksum = hashlib.md5(new_src.encode('utf-8')).hexdigest()
                    # values_str = (new_src, parent_url, 0, checksum)
                    # update_sql = "UPDATE {} SET {}={} WHERE {}='{}'".format(DB_CONFIG["TBL_URL"], URL_FIELD["STATUS"], 1,
                    #                                                         URL_FIELD["CHECKSUM"], checksum)
                    # cursor.execute(update_sql)
                    # if cursor.rowcount == 0:
                    input_sql = "INSERT INTO {}({}) SELECT '{}','{}',{},'{}' WHERE NOT EXISTS(SELECT 1 FROM {} WHERE " \
                                "{}='{}')".format(DB_CONFIG["TBL_URL"], params, new_src, parent_url, 0, checksum,
                                                 DB_CONFIG["TBL_URL"], URL_FIELD["CHECKSUM"], checksum)
                    cursor.execute(input_sql)
                # cursor.executemany(input_sql, values)
                self.cnx.commit()
                cursor.close()
                cursor = self.cnx.cursor()
                checksum = hashlib.md5(data["image"].encode('utf-8')).hexdigest()  # # Setting as PROCESSED
                update_sql = "UPDATE {} SET {}={} WHERE {}='{}'".format(DB_CONFIG["TBL_URL"], URL_FIELD["STATUS"], 1,
                                                                        URL_FIELD["CHECKSUM"], checksum)
                cursor.execute(update_sql)
                self.cnx.commit()
                cursor.close()
            except mysql.connector.Error as e:
                print("parse--{}", e)
                pass

    def parseFirstData(self, data):
        # retValue = {
        #     "image": "",
        #     "related": [],
        #     "new_sources": [],
        #     "keywords": [],
        # }
        url_fields = [URL_FIELD["SOURCE"], URL_FIELD["PARENT"], URL_FIELD["STATUS"]]

        # processing for same series
        params = ",".join(url_fields)
        input_sql = "INSERT INTO {}({}) VALUES(%s, %s, %s)".format(DB_CONFIG["TBL_URL"], params)

        values = []
        for related in data["related"]:
            #     "SOURCE": "source_url",
            #     "PARENT": "parent_url",
            #     "STATUS": "status",
            parent_url = data["image"]
            values_str = (related, parent_url, 0)
            values.append(values_str)
        cursor = self.cnx.cursor()
        cursor.executemany(input_sql, values)
        self.cnx.commit()

    def loopLogic(self, lock):
        with lock:
            select_sql = "SELECT * from {} WHERE {}={} LIMIT 1".format(DB_CONFIG["TBL_URL"], URL_FIELD["STATUS"], 0)
            cursor = self.cnx.cursor()
            cursor.execute(select_sql)
            result = cursor.fetchone()
            if result is None:
                return None
            cursor.close()
            cursor = self.cnx.cursor()
            update_sql = "UPDATE {} SET {}={} WHERE {}={}".format(DB_CONFIG["TBL_URL"], URL_FIELD["STATUS"], 2,
                                                                    URL_FIELD["PK"], result[0])
            cursor.execute(update_sql)
            self.cnx.commit()
            cursor.close()
            return result
