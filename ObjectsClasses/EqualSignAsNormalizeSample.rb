class DateFormat
    def initialize(date)
		month, day, year = date.split('/')
		@month = month
		@day = day
		@year = year
	end
	
	def year=(year)
		@year = year.to_i
		if @year < 100
			@year = 2000 + @year
			puts "The year #{@year} that you entered is correct.."
		else
			puts "Malformed year #{@year} entered.."
		end
	end
	
	def whatisdate
		puts "The Date you have entered is : Day=#{@day} Month=#{@month} Year=#{@year}"
	end
end

date1 = DateFormat.new("12/15/1981")
puts date1.whatisdate
date1.year = "2013"
puts date1.whatisdate
date2 = DateFormat.new("12/15/8")
puts date2.whatisdate
date2.year = "13"
puts date2.whatisdate
date3 = DateFormat.new("12/15/81")
puts date3.whatisdate
date3.year = "9"
puts date3.whatisdate