class InsiderTrading::CLI

	def call
		@user_input = "1" #kind of odd but on the first pass of the while loop I want it to choose option two
		puts "Welcome"
		while @user_input != "exit"
			if @user_input == "1"
				ticker_prompt
				ticker_followup_prompt
			elsif @user_input == "2"
				puts "this is where I will call the insider scraper and then prompt to see if they want to enter another ticker or exit"
				insider_followup_prompt
			elsif @user_input == "exit"
			else
				catchall
			end
		end
		goodbye
	end

	def ticker_prompt
		@stock_info = InsiderTrading::Stock.create
		puts "That ticker is for #{@stock_info.name} which is trading at #{@stock_info.price}."
	end

	def ticker_followup_prompt
		puts "Press 1 to enter a different ticker or 2 to see insider transactions for this ticker. (type exit to quit)"
		@user_input = gets.strip
	end

	def goodbye
		puts "Check you later, bro"
	end

	def catcheall
		puts "you didn't choose a valid option, bro! Please try again"
		@user_input = gets.strip
	end

	def insider_followup_prompt
		puts "Press 1 to enter a different ticker. (exit to quit)"
		@user_input = gets.strip
	end
		



end
