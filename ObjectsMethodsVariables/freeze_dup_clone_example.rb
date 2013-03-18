obj = Object.new
def obj.original(x)
	change_str(x)
end

def obj.duplicate(x)
	puts "Do you want to freeze original value?"
	option = gets.chomp
	if option == "Y"
		x.freeze
	end
	change_str(x.dup)
end

def obj.freez(x)
	change_str(x.freeze)
end

def obj.clon(x)
	puts "Do you want to freeze original value?"
	option = gets.chomp
	if option == "Y"
		x.freeze
	end
	change_str(x.clone)
end

def obj.change_str(x)
	x.replace("NEW")
end
str = "OLD"
puts "Initial value: #{str}"
puts "Which method do you want?"
user_request = gets.chomp
if obj.respond_to?(user_request)
	obj.send(user_request,str)
elsif
	puts "Object doesnt respond to #{user_request}"
end	
puts "Final value: #{str}"

