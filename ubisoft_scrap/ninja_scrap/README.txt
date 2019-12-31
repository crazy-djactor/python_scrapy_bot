Hi,

On main.py you can find it
	    data_filter = {
        "area_expertise": ["Project Management (Games/Animation movies)", "Game & Level Design/Creative Direction"],
        "type_contract": ["Full-time"],
        "country_opt": ["Sweden"],
        "city_opt": ["Malmö"]
    }
It is a filter what you want.
If you want some other filters then edit it.

I provide you two kinds of resolution.

1) Scrapping by Selenium and Request
   The information on this sites is loaded through the call of web api. Every link or button is only toggled for javascript. It doesn't require web request.
   So, first implement automation by Selenium.
   After setting filters by Selenium you should see job lists below. 
   For a link of every job I implemented by Request. Because every link also uses web api.
   The address of web api is https://api.smartrecruiters.com/v1/companies/Ubisoft2/postings/
2) Scrapping by Request
   Request is convenient for scrapping information on this site.
   Because all the information on this site are loaded by calling web api before loading site. And nothing else needed
   Just one calling of web api, it receives all the informations of jobs by JSON data type.
   The address of web api is https://api.smartrecruiters.com/v1/companies/Ubisoft2/postings/
