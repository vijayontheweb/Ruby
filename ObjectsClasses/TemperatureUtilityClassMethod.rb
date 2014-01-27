#Temperature Conversion Utility Class

class Temperature
	def Temperature.c2f(c)
		9/5*c+32
	end

	def Temperature.f2c(f)
		(f-32)*5/9
	end	
end

celsius = 10
fahrenheit = 20

puts "The fahrenheit value of celsius: #{celsius} is = #{Temperature.c2f(celsius)}"
puts "The celsius value of fahrenheit: #{fahrenheit} is = #{Temperature.f2c(fahrenheit)}"