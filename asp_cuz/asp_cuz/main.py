
from scrapy.crawler import CrawlerProcess
from asp_cuz.asp_cuz.spiders.ninjacrawl import NinjacrawlSpider
import psycopg2
from scrapy.utils.project import get_project_settings

def main():

    print("Grabing data from DB...")
    connection = None
    # try:
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
    data_filter = {
        "kod_budovy": ["19374691"],
        "typ_stavebniho_objektu": ["budova s číslem popisným"],
        "cislo_domovni": [["35"]],
        "nazev_casti_obce": ["Židenice"],
        "kod_obce": ["582786"],

        # "kod_budovy": ["19416768"],
        # "typ_stavebniho_objektu": ["budova s číslem popisným"],
        # "cislo_domovni": [["42"]],
        # "nazev_casti_obce": ["Židenice"],
        # "kod_obce": ["582786"],

        # "kod_budovy": [],
        # "typ_stavebniho_objektu": [],
        # "cislo_domovni": [],
        # "nazev_casti_obce": [],
        # "kod_obce": [],
    }

    data_filter = [[]]
    num_procs = 1
    i = 0
    for i in range(num_procs):
        data_filter.append([])

    for row in records:
        row_data = {"kod_budovy": row[0], "typ_stavebniho_objektu": row[1], "cislo_domovni": row[2],
                    "nazev_casti_obce": row[3], "kod_obce": row[4]}
        data_filter[i % num_procs].append(row_data)
        i = i + 1

    setting = get_project_settings()
    process = CrawlerProcess(setting)

    # process.crawl(NinjacrawlSpider, param={"row_data": data_filter[0], "idx": 0, "con": connection})
    for x in range(num_procs):
        process.crawl(NinjacrawlSpider, param={"row_data": data_filter[x], "idx": x, "con": connection})

    process.start()

    cursor.close()
    connection.close()
    # except (Exception, psycopg2.Error) as error:
    #     print("Error while processing= ", error)
    # finally:
    #     # closing database connection.
    #     if connection:
    #         cursor.close()
    #         connection.close()
    #         print("PostgreSQL connection is closed")


if __name__ == '__main__':
    main()
