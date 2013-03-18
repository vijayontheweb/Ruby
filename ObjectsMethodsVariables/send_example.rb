obj = Object.new
def obj.hi
	puts "Hi Vijay"
end
puts "Which method do you want?"
user_request = gets.chomp
if obj.respond_to?(user_request)
	obj.send(user_request)
elsif
	puts "Object doesnt respond to #{user_request}"
end	