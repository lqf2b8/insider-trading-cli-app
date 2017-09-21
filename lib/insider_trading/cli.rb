class InsiderTrading::CLI

	def call
		puts "Welcome"
		@stock_info = InsiderTrading::Stock.create
		puts "The stock ticker is #{@stock_info.name}"
	end
end
