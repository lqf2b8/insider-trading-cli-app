class InsiderTrading::Stock
	attr_accessor :name, :price, :url, :insider_info

	def fake_msft
		msft = self.new
		msft.name = Microsoft
		msft.price = 42.00
		msft.insider_info = {directors: => 1200, officers: => 300}
		msft.url = "www.finance.yahoo.com/msft"
	end

	def fake_hog
		hog = self.new
		hog.name = Harley Davidson
		hog.price = 63.00
		hog.insider_info = {directors: => 200, officers: => 500}
		hog.url = "www.finance.yahoo.com/hog"
	end


end
