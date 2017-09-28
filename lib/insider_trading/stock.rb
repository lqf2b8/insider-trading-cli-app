class InsiderTrading::Stock
	attr_accessor :name, :price, :basic_url, :insider_url, :insider3, :insider12

	@@all = []


	def initialize

		@@all << self
	end

	def self.all
		@@all
	end




end
