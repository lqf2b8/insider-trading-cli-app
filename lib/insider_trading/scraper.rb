class InsiderTrading::Scraper
	def self.create_and_complete_stock(input)
		
		#call scraper method in future
		stock = InsiderTrading::Stock.new
		stock.insider_url = "http://www.nasdaq.com/symbol/#{input}/insider-trades"
		stock.basic_url = "http://www.nasdaq.com/symbol/#{input}"

		basic_doc = Nokogiri::HTML(open(stock.basic_url))
    	insider_doc = Nokogiri::HTML(open(stock.insider_url))
    	stock.name = basic_doc.search("h1").text.strip.gsub(" Quote & Summary Data", "")
    	stock.price = basic_doc.search("div.qwidget-dollar").text.strip.gsub("*" && "$", "").to_f.round(2)
    	stock.insider3 = insider_doc.search("td.center")[14].text 
    	stock.insider12 = insider_doc.search("td.center")[15].text

    	stock

	end


end
