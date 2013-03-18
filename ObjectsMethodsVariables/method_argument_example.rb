obj = Object.new
def obj.one_arg(x)
	puts "The one arg passed is #{x}"
end

def obj.zero_or_more_arg(*x)
	puts "The args if any passed is #{x}"
end

def obj.two_or_more_arg(a,b,*x)
	p a,b,x
end

def obj.default_arg(a,b,c,d,e=5)
	p a,b,c,d,e
end

def obj.mixed_arg(a,b,*c,d)
	p a,b,c,d
end

puts "Which method do you want?"
user_request = gets.chomp
if obj.respond_to?(user_request)
	obj.send(user_request,5,6,7,8,9)
elsif
	puts "Object doesnt respond to #{user_request}"
end	