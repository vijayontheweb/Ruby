class Currency
	def value=(amount)
		if (amount*100).to_i == amount*100
			@value = amount
			puts "The amount #{amount} that you entered is correct.."
		else
			puts "Malformed amount #{amount} entered.."
		end
	end

end

cur = Currency.new
cur.value = 100.53
cur.value = 100.632
