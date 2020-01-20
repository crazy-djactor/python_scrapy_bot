import threading
from queue import Queue

import psycopg2
from ninja_scrap import ninja_scrap

que = Queue()

class EveryWorker(threading.Thread):
    def __init__(self, t_id, con):
        super().__init__()
        self.t_id = t_id
        self.con = con

    def run(self):
        while True:
            # Get the work from the queue and expand the tuple
            try:
                row_data = que.get()
            except Queue.Empty:
                break

            print(self.t_id, row_data["kod_budovy"])
            prob = ninja_scrap(row_data, self.con)
            prob.ubisoft_scrap()
            que.task_done()
            # req = RequestHtml(begin_date="1950-01-01", site_no=ssite_no, end_date="2019-11-21")
        que.task_done()


def grab_datafilter_from_postgres():
    print("Grabing data from DB...")
    connection = None
    try:
        connection = psycopg2.connect(user="postgres",
                                      password="19900413",
                                      host="127.0.0.1",
                                      port="5432",
                                      database="postgres")

        cursor = connection.cursor()
        # Print PostgreSQL Connection properties
        print(connection.get_dsn_parameters(), "\n")

        # Print PostgreSQL version
        cursor.execute("SELECT * from sproject.budovy_seznam")
        records = cursor.fetchall()
        cursor.close()

        print("Total rows are:  ", len(records))
        print("Printing each row")


        data_filter = []

        i = 0
        for row in records:
            row_data = {
                "kod_budovy": "",
                "typ_stavebniho_objektu": "",
                "cislo_domovni": "",
                "nazev_casti_obce": "",
                "kod_obce": "",
            }
            row_data["kod_budovy"] = row[0]
            row_data["typ_stavebniho_objektu"] = row[1]
            row_data["cislo_domovni"] = row[2]
            row_data["nazev_casti_obce"] = row[3]
            row_data["kod_obce"] = row[4]
            data_filter.append(row_data)
            que.put(data_filter[i])
            i = i + 1

        num_procs = 1
        for x in range(num_procs):
            worker = EveryWorker(t_id=x, con=connection)
            # Setting daemon to True will let the main thread exit even though the workers are blocking
            worker.daemon = True
            worker.start()
        que.join()

        cursor.close()
        connection.close()
    except (Exception, psycopg2.Error) as error:
        print("Error while processing= ", error)
    finally:
        # closing database connection.
        if connection:
            cursor.close()
            connection.close()
            print("PostgreSQL connection is closed")


if __name__ == '__main__':
    grab_datafilter_from_postgres()

    # ubi_url = Ubisoft_URLLib2()
    # ubi_url.start_request()

    input("Press Enter to continue...")
