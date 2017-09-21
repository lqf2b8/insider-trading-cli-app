class InsiderTrading::Scraper
	def self.complete_stock(stock)
		basic_doc = Nokogiri::HTML(open(stock.basic_url))
    	insider_doc = Nokogiri::HTML(open(stock.insider_url))
    	stock.name = basic_doc.search("h1").text
    	stock.price = basic_doc.search("div.qwidget-dollar").text
    	stock.insider3 = insider_doc.search("td.center")[14].text 
    	stock.insider12 = insider_doc.search("td.center")[15].text

    	stock
  	end 

end
#content_main > div:nth-child(10) > table > tbody > tr.sum > td:nth-child(2)