import scrapy


class SpiderSpider(scrapy.Spider):
    name = 'spider'
    allowed_domains = ['uk.iherb.com']

    # start_urls = ['https://uk.iherb.com/catalog/brandsaz']

    def __init__(self, params):
        self.que = params["outputQue"]
        self.idx = params["idx"]
        self.start = params["start"]
        self.end = params["end"]

    def start_requests(self):

        url = "https://uk.iherb.com/catalog/brandsaz"
        yield scrapy.Request(url, dont_filter=True, callback=self.parse)

    def parse(self, response):
        self.totalnumber = 0
        brands = response.xpath('//div[contains(@class,"item-row-borders")]')
        # url number confirm


        # for eachbrand01 in brands[self.start:self.end]:
        for eachbrand01 in brands:
            eachbrand01_aa = eachbrand01.xpath('.//div/div')
            for eachbrand02 in eachbrand01_aa:
                eachbrand02_aa = eachbrand02.xpath('.//ul/li')
                for eachbrand03 in eachbrand02_aa:
                    eachbrandurl = eachbrand03.xpath('.//a/@href').extract_first()
                    yield scrapy.Request(eachbrandurl, callback=self.url_parse, dont_filter=True, cb_kwargs=dict(url=eachbrandurl))

        # eachbrandurl = "https://uk.iherb.com/c/21st-Century-Health-Care"
        # yield scrapy.Request(eachbrandurl, callback=self.url_parse, dont_filter=True, cb_kwargs=dict(url=eachbrandurl))

    def url_parse(self, response, url):
        base_url = url
        products = response.xpath('//div[@class="product ga-product"]')
        for eachpro in products:
            self.totalnumber += 1
            product_url = eachpro.xpath('.//div[contains(@class,"product-inner-wide")]/div/a/@href').extract_first()
            yield scrapy.Request(product_url, callback=self.datascrapy, dont_filter=True)

        paginations_ = response.xpath('//a[@class="pagination-link"]')
        if (paginations_ is not None) and (len(paginations_) > 0):
            last = paginations_[-1]
            last_page = int(last.xpath('span[2]/text()').extract_first())
            for i in range(2, last_page + 1):
                product_url = "{}?p={}".format(base_url, i)
                yield scrapy.Request(product_url, callback=self.product_page, dont_filter=True)

    def product_page(self, response):
        products = response.xpath('//div[@class="product ga-product"]')
        for eachpro in products:
            self.totalnumber += 1
            product_url = eachpro.xpath('.//div[contains(@class,"product-inner-wide")]/div/a/@href').extract_first()
            yield scrapy.Request(product_url, callback=self.datascrapy, dont_filter=True)

    def datascrapy(self, response):
        product_url = response.request.url
        brand = response.xpath('//div[@id="breadCrumbs"]/a[2]/text()').extract_first()
        category = response.xpath('//div[@id="breadCrumbs"]/a[4]/text()').extract_first()
        if category == None:
            category = ""
        else:
            category = category.strip()
        product_name = response.xpath('//*[@id="name"]/text()').extract_first()
        bodydata = response.xpath('//div[contains(@class,"product-detail-container")]')
        headertitle = bodydata.xpath(
            './/section[contains(@class,"product-description-title")]/div/h1/text()').extract_first()
        ourprice = response.xpath('//div[contains(@class,"our-price")]/text()').extract_first()
        if ourprice == None:
            ourprice = ""
        else:
            ourprice = ourprice.strip()
        price_per_count = response.xpath('//div[contains(@class,"price-per-unit")]/text()').extract_first()
        if price_per_count == None:
            price_per_count = ""
        else:
            price_per_count = price_per_count.strip()

        expirationdate = None
        try:
            expirationdate = response.xpath('//ul[@id="product-specs-list"]/li[1]/text()').extract()[1]
        except:
            pass

        if expirationdate == None:
            expirationdate = ""
        else:
            expirationdate = expirationdate.strip()

        shippingweight = response.xpath(
            '//ul[@id="product-specs-list"]/li/div[contains(@class,"dimensions-popup-wrapper")]/span[@class="product-weight"]/text()').extract_first()
        if shippingweight == None:
            shippingweight = ""
        else:
            shippingweight = shippingweight.strip()
        product_code = response.xpath('//ul[@id="product-specs-list"]/li[3]/span/text()').extract_first()
        upc_code = response.xpath('//ul[@id="product-specs-list"]/li[4]/span/text()').extract_first()
        package_quality = response.xpath('//ul[@id="product-specs-list"]/li[5]/text()').extract_first()
        if package_quality == None:
            package_quality = ""
        else:
            package_quality_list = package_quality.split(":")
            package_quality = package_quality_list[1]
        dimension01 = response.xpath('//ul[@id="product-specs-list"]/li[6]/div/span/span[1]/text()').extract_first()
        if dimension01 == None:
            dimension01 = ""
        dimension02 = response.xpath('//ul[@id="product-specs-list"]/li[6]/div[1]/span/span[2]/text()').extract_first()
        if dimension02 == None:
            dimension02 = ""
        stock = response.xpath(
            '//section[contains(@class,"product-description-stock-status")]/div/strong/text()').extract_first()
        if stock == None:
            stock = ""
        else:
            stock = stock.strip()
        imageslist = []
        images = response.xpath('//div[@class="thumbnail-container"]/img/@src').extract()
        for eachimage in images:
            imageslist.append(eachimage)
        imagelistlength = len(imageslist)
        for i in range(0, 5 - imagelistlength):
            imageslist.append("")
        product_rank_expand = response.xpath(
            '//section[contains(@class,"product-description-ranking")]/div[@class="best-selling-rank"]/div')
        product_rank = []
        for eachrank in product_rank_expand:
            rank = eachrank.xpath('.//strong/text()').extract_first()
            if rank == None:
                rank = ""
            else:
                rank = rank.strip()
            rankshop = eachrank.xpath('.//a/strong/text()').extract_first()
            if rankshop == None:
                rankshop = ""
            else:
                rankshop = rankshop.strip()
            rank = rank + ' ' + rankshop
            product_rank.append(rank)
        image_url = response.xpath('//div[contains(@class,"product-summary-image")]/a/@href').extract_first()
        # quality discount
        quality = response.xpath('//div[contains(@class,"attribute-group-quantity-discount")]')
        quality_left_count = quality.xpath('.//div[1]/div/div[@class="attribute-name"]/text()').extract_first()
        if quality_left_count == None:
            quality_left_count = ""
        else:
            quality_left_count = quality_left_count.strip()
        quality_left_price = quality.xpath(
            './/div[1]/div/div[@class="price-container"]/span/bdi/text()').extract_first()
        if quality_left_price == None:
            quality_left_price = ""
        else:
            quality_left_price = quality_left_price.strip()
        quality_right_title = quality.xpath('.//div[2]/div[1]/text()').extract_first()
        if quality_right_title == None:
            quality_right_title = ""
        else:
            quality_right_title = quality_right_title.strip()
        quality_right_count = quality.xpath('.//div[2]/div/div[@class="attribute-name"]/text()').extract_first()
        if quality_right_count == None:
            quality_right_count = ""
        else:
            quality_right_count = quality_right_count.strip()
        quality_right_price = quality.xpath(
            './/div[2]/div/div[@class="price-container"]/span[1]/bdi/text()').extract_first()
        if quality_right_price == None:
            quality_right_price = ""
        else:
            quality_right_price = quality_right_price.strip()
        quality_left_percent = quality.xpath(
            '//div[2]/div/div[@class="price-container"]/span[2]/text()').extract_first()
        if quality_left_percent == None:
            quality_left_percent = ""
        else:
            quality_left_percent = quality_left_percent.strip()
        quality_discount = [quality_left_count, quality_left_price, quality_right_title, quality_right_count,
                            quality_right_price, quality_left_percent]
        datalist = [product_url, product_name, brand, category, stock, ourprice, price_per_count, expirationdate,
                    shippingweight, product_code, upc_code, package_quality, dimension01 + '' + dimension02,
                    str(quality_discount).replace("[", "").replace("]", ""),
                    str(product_rank).replace("[", "").replace("]", ""), imageslist[0], imageslist[1], imageslist[2],
                    imageslist[3], imageslist[4]]

        self.que.put(datalist)
        # wb = load_workbook('./uk/uk_iherb.xlsx')
        # sheet1 = wb.active
        # self.row += 1
        # col=1
        # for items in datalist:
        #     sheet1.cell(self.row, col, items)
        #     col += 1
        # wb.save("./uk/uk_iherb.xlsx")
        yield {
            "producturl": product_url,
            "headertitle": headertitle,
            "ourprice": ourprice,
            "expirationdate": expirationdate,
            "shippingweight": shippingweight,
            "product_code": product_code,
            "upc_code": upc_code,
            "package_quality": package_quality,
            "dimension01": dimension01,
            "dimension02": dimension02,
            "product_rank_expand": product_rank,
            "image_url": image_url
        }

    def close(self, reason):
        self.que.put('End')


# second www.iherb.com


class US_Spider(scrapy.Spider):
    name = 'spider'
    allowed_domains = ['www.iherb.com']

    # start_urls = ['https://uk.iherb.com/catalog/brandsaz']

    def __init__(self, params):
        self.que = params["outputQue"]
        self.idx = params["idx"]
        self.start = params["start"]
        self.end = params["end"]

    def start_requests(self):
        headers = {
            'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36',
            'Accept': 'application/json,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
            'Accept-Encoding': 'gzip, deflate, sdch',
            'Accept-Language': 'en-US,en;q=0.8,zh-CN;q=0.6,zh;q=0.4',
            'cookie':'gcl_au=1.1.136384171.1580492879; dscid=77aca59b-cbe9-46ef-9ac5-7e51c6a7bcc4; ForceTrafficSplitType=B; ih-exp-recs=1; __auc=ab67bf0116ffcb7a33d33e79b86; unbxd.userId=uid-1580492891577-23618; _ga=GA1.2.717821663.1580492893; _gid=GA1.2.730067350.1580492893; _fbp=fb.1.1580492895618.1470005646; ih-hp-vp=01; ih-hp-view=1; __cfruid=1acd2863db203b5ffccffa0588bd2f04223b4518-1580494258; tmr_lvid=11189cc8e8bf8cda53445b5ce6e6b68d; tmr_lvidTS=1580515180678; _ym_uid=1580515181751548991; _ym_d=1580515181; _ym_isad=2; iher-pref1=storeid=0&sccode=US&lan=en-US&scurcode=USD&lchg=1&ifv=1&wp=1&bi=0; ih-preference=store=0&country=US&language=en-US&currency=USD; tmr_reqNum=5; __CG=u%3A2541530398757265400%2Cs%3A1527621752%2Ct%3A1580515768647%2Cc%3A4%2Ck%3Awww.iherb.com%2F22%2F22%2F65%2Cf%3A1%2Ci%3A1'
        }

        url = 'https://www.iherb.com/catalog/brandsaz'
        yield scrapy.Request(url, headers=headers, callback=self.parse)

    def parse(self, response):
        self.totalnumber = 0

        brands = response.xpath('//div[contains(@class,"item-row-borders")]')

        # url number confirm
        headers = {
            'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36',
            'Accept': 'application/json,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
            'Accept-Encoding': 'gzip, deflate, sdch',
            'Accept-Language': 'en-US,en;q=0.8,zh-CN;q=0.6,zh;q=0.4',
            'cookie':'gcl_au=1.1.136384171.1580492879; dscid=77aca59b-cbe9-46ef-9ac5-7e51c6a7bcc4; ForceTrafficSplitType=B; ih-exp-recs=1; __auc=ab67bf0116ffcb7a33d33e79b86; unbxd.userId=uid-1580492891577-23618; _ga=GA1.2.717821663.1580492893; _gid=GA1.2.730067350.1580492893; _fbp=fb.1.1580492895618.1470005646; ih-hp-vp=01; ih-hp-view=1; __cfruid=1acd2863db203b5ffccffa0588bd2f04223b4518-1580494258; tmr_lvid=11189cc8e8bf8cda53445b5ce6e6b68d; tmr_lvidTS=1580515180678; _ym_uid=1580515181751548991; _ym_d=1580515181; _ym_isad=2; iher-pref1=storeid=0&sccode=US&lan=en-US&scurcode=USD&lchg=1&ifv=1&wp=1&bi=0; ih-preference=store=0&country=US&language=en-US&currency=USD; tmr_reqNum=5; __CG=u%3A2541530398757265400%2Cs%3A1527621752%2Ct%3A1580515768647%2Cc%3A4%2Ck%3Awww.iherb.com%2F22%2F22%2F65%2Cf%3A1%2Ci%3A1'
        }

        # if len(brands) > self.idx:
        #     eachbrand01 = brands[self.idx]
        i = 0
        # for eachbrand01 in brands[self.start:self.end]:
        for eachbrand01 in brands:
            eachbrand01_aa = eachbrand01.xpath('.//div/div')
            for eachbrand02 in eachbrand01_aa:
                eachbrand02_aa = eachbrand02.xpath('.//ul/li')
                for eachbrand03 in eachbrand02_aa:
                    eachbrandurl = eachbrand03.xpath('.//a/@href').extract_first()
                    yield scrapy.Request(eachbrandurl, callback=self.url_parse, dont_filter=True, cb_kwargs=dict(url=eachbrandurl))

    def url_parse(self, response, url):
        base_url = response.request.url
        products = response.xpath('//div[@class="product ga-product"]')
        for eachpro in products:
            self.totalnumber += 1
            product_url = eachpro.xpath('.//div[contains(@class,"product-inner-wide")]/div/a/@href').extract_first()
            yield scrapy.Request(product_url, callback=self.datascrapy, dont_filter=True)

        paginations_ = response.xpath('//a[@class="pagination-link"]')
        if (paginations_ is not None) and (len(paginations_) > 0):
            last = paginations_[-1]
            last_page = int(last.xpath('span[2]/text()').extract_first())
            for i in range(2, last_page + 1):
                product_url = "{}?p={}".format(base_url, i)
                yield scrapy.Request(product_url, callback=self.product_page, dont_filter=True)

    def product_page(self, response):
        products = response.xpath('//div[@class="product ga-product"]')
        for eachpro in products:
            self.totalnumber += 1
            product_url = eachpro.xpath('.//div[contains(@class,"product-inner-wide")]/div/a/@href').extract_first()
            yield scrapy.Request(product_url, callback=self.datascrapy, dont_filter=True)

    def datascrapy(self, response):
        product_url = response.request.url
        brand = response.xpath('//div[@id="breadCrumbs"]/a[2]/text()').extract_first()
        category = response.xpath('//div[@id="breadCrumbs"]/a[4]/text()').extract_first()
        if category == None:
            category = ""
        else:
            category = category.strip()
        product_name = response.xpath('//*[@id="name"]/text()').extract_first()
        bodydata = response.xpath('//div[contains(@class,"product-detail-container")]')
        headertitle = bodydata.xpath(
            './/section[contains(@class,"product-description-title")]/div/h1/text()').extract_first()
        ourprice = response.xpath('//div[contains(@class,"our-price")]/text()').extract_first()
        if ourprice == None:
            ourprice = ""
        else:
            ourprice = ourprice.strip()
        price_per_count = response.xpath('//div[contains(@class,"price-per-unit")]/text()').extract_first()
        if price_per_count == None:
            price_per_count = ""
        else:
            price_per_count = price_per_count.strip()
        expirationdate = response.xpath('//ul[@id="product-specs-list"]/li[1]/text()').extract()[1]
        if expirationdate == None:
            expirationdate = ""
        else:
            expirationdate = expirationdate.strip()
        shippingweight = response.xpath(
            '//ul[@id="product-specs-list"]/li/div[contains(@class,"dimensions-popup-wrapper")]/span[@class="product-weight"]/text()').extract_first()
        if shippingweight == None:
            shippingweight = ""
        else:
            shippingweight = shippingweight.strip()
        product_code = response.xpath('//ul[@id="product-specs-list"]/li[3]/span/text()').extract_first()
        upc_code = response.xpath('//ul[@id="product-specs-list"]/li[4]/span/text()').extract_first()
        package_quality = response.xpath('//ul[@id="product-specs-list"]/li[5]/text()').extract_first()
        if package_quality == None:
            package_quality = ""
        else:
            package_quality_list = package_quality.split(":")
            package_quality = package_quality_list[1]
        dimension01 = response.xpath('//ul[@id="product-specs-list"]/li[6]/div/span/span[1]/text()').extract_first()
        if dimension01 == None:
            dimension01 = ""
        dimension02 = response.xpath('//ul[@id="product-specs-list"]/li[6]/div[1]/span/span[2]/text()').extract_first()
        if dimension02 == None:
            dimension02 = ""
        stock = response.xpath(
            '//section[contains(@class,"product-description-stock-status")]/div/strong/text()').extract_first()
        if stock == None:
            stock = ""
        else:
            stock = stock.strip()
        imageslist = []
        images = response.xpath('//div[@class="thumbnail-container"]/img/@src').extract()
        for eachimage in images:
            imageslist.append(eachimage)
        imagelistlength = len(imageslist)
        for i in range(0, 5 - imagelistlength):
            imageslist.append("")
        product_rank_expand = response.xpath(
            '//section[contains(@class,"product-description-ranking")]/div[@class="best-selling-rank"]/div')
        product_rank = []
        for eachrank in product_rank_expand:
            rank = eachrank.xpath('.//strong/text()').extract_first()
            if rank == None:
                rank = ""
            else:
                rank = rank.strip()
            rankshop = eachrank.xpath('.//a/strong/text()').extract_first()
            if rankshop == None:
                rankshop = ""
            else:
                rankshop = rankshop.strip()
            rank = rank + ' ' + rankshop
            product_rank.append(rank)
        image_url = response.xpath('//div[contains(@class,"product-summary-image")]/a/@href').extract_first()
        # quality discount
        quality = response.xpath('//div[contains(@class,"attribute-group-quantity-discount")]')
        quality_left_count = quality.xpath('.//div[1]/div/div[@class="attribute-name"]/text()').extract_first()
        if quality_left_count == None:
            quality_left_count = ""
        else:
            quality_left_count = quality_left_count.strip()
        quality_left_price = quality.xpath(
            './/div[1]/div/div[@class="price-container"]/span/bdi/text()').extract_first()
        if quality_left_price == None:
            quality_left_price = ""
        else:
            quality_left_price = quality_left_price.strip()
        quality_right_title = quality.xpath('.//div[2]/div[1]/text()').extract_first()
        if quality_right_title == None:
            quality_right_title = ""
        else:
            quality_right_title = quality_right_title.strip()
        quality_right_count = quality.xpath('.//div[2]/div/div[@class="attribute-name"]/text()').extract_first()
        if quality_right_count == None:
            quality_right_count = ""
        else:
            quality_right_count = quality_right_count.strip()
        quality_right_price = quality.xpath(
            './/div[2]/div/div[@class="price-container"]/span[1]/bdi/text()').extract_first()
        if quality_right_price == None:
            quality_right_price = ""
        else:
            quality_right_price = quality_right_price.strip()
        quality_left_percent = quality.xpath(
            '//div[2]/div/div[@class="price-container"]/span[2]/text()').extract_first()
        if quality_left_percent == None:
            quality_left_percent = ""
        else:
            quality_left_percent = quality_left_percent.strip()
        quality_discount = [quality_left_count, quality_left_price, quality_right_title, quality_right_count,
                            quality_right_price, quality_left_percent]
        datalist = [product_url, product_name, brand, category, stock, ourprice, price_per_count, expirationdate,
                    shippingweight, product_code, upc_code, package_quality, dimension01 + '' + dimension02,
                    str(quality_discount).replace("[", "").replace("]", ""),
                    str(product_rank).replace("[", "").replace("]", ""), imageslist[0], imageslist[1], imageslist[2],
                    imageslist[3], imageslist[4]]

        # wb = load_workbook('./us/us_iherb.xlsx')
        # sheet1 = wb.active
        # self.row += 1
        # col=1
        # for items in datalist:
        #
        #     sheet1.cell(self.row, col, items)
        #     col += 1
        # wb.save("./us/us_iherb.xlsx")
        self.que.put(datalist)

        yield {
            "producturl": product_url,
            "headertitle": headertitle,
            "ourprice": ourprice,
            "expirationdate": expirationdate,
            "shippingweight": shippingweight,
            "product_code": product_code,
            "upc_code": upc_code,
            "package_quality": package_quality,
            "dimension01": dimension01,
            "dimension02": dimension02,
            "product_rank_expand": product_rank,
            "image_url": image_url
        }

    def close(self, reason):
        self.que.put('End')
