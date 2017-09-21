class InsiderTrading::Stock
	attr_accessor :name, :price, :basic_url, :insider_url, :insider3, :insider12

	def self.create
		puts "Enter a ticker, bro!"
		input = gets.strip.downcase
		#call scraper method in future
		holder = self.new
		holder.insider_url = "http://www.nasdaq.com/symbol/#{input}/insider-trades"
		holder.basic_url = "http://www.nasdaq.com/symbol/#{input}"

		holder = InsiderTrading::Scraper.complete_stock(holder)
	end



end
