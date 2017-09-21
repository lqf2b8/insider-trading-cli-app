class InsiderTrading::Stock
	attr_accessor :name, :price, :url, :insider_info, :ticker

	def self.create
		puts "Enter a ticker, bro!"
		input = gets.strip.downcase
		#call scraper method in future
		holder = self.new
		holder.name = input
		holder.price = 42.00
		holder.insider_info = {:directors => 1200, :officers => 300}
		holder.url = "www.finance.yahoo.com/#{input}"
		holder.ticker = input
		holder
	end



end
