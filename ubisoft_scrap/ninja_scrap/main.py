from ubisoft_selenium import Ubisoft_Selenium
from ubisoft_request import Ubisoft_URLLib2

if __name__ == '__main__':
    data_filter = {
        "area_expertise": ["Project Management (Games/Animation movies)", "Game & Level Design/Creative Direction"],
        "type_contract": ["Full-time"],
        "country_opt": ["Sweden"],
        "city_opt": ["Malmö"]
    }
    print("Processing---")
    prob = Ubisoft_Selenium(data_filter)
    prob.ubisoft_scrap()

    # ubi_url = Ubisoft_URLLib2()
    # ubi_url.start_request()


    input("Press Enter to continue...")

