class InsiderTrading::CLI

	def call
		@user_input = "1" #kind of odd but on the first pass of the while loop I want it to choose option one
		puts "Welcome"
		while @user_input != "exit"
			if @user_input == "1"
				ticker_prompt
				ticker_followup_prompt
			elsif @user_input == "2"
				insider_followup_prompt
			elsif @user_input == "3"
				display_previous_stocks				
			elsif @user_input == "exit"
			else
				catchall
			end
		end
		goodbye
	end

	def ticker_prompt
		puts "Enter a ticker, bro!"
		input = gets.strip.downcase
		@stock_info = InsiderTrading::Scraper.create_and_complete_stock(input)
		puts "That name of this instrument is #{@stock_info.name} and it is trading at $#{@stock_info.price}."
	end

	def ticker_followup_prompt
		puts "Press 1 to enter a different ticker or 2 to see insider transactions for this ticker or 3 to see previous stocks searched. (type exit to quit)"
		@user_input = gets.strip
	end

	def goodbye
		puts "Check you later, bro"
	end

	def catchall
		puts "you didn't choose a valid option, bro! Please try again"
		@user_input = gets.strip
	end

	def insider_followup_prompt
		puts "This instrument has had #{@stock_info.insider3} net insider shares traded the last 3 months"
		puts "It has also had #{@stock_info.insider12} net insider shares traded the last 12 months"
		puts "Press 1 to enter a different ticker. (exit to quit)"
		@user_input = gets.strip
	end

	def display_previous_stocks
		InsiderTrading::Stock.all.each do |stock|
			puts "#{stock.name}"
		end
		ticker_followup_prompt

	end

		



end
