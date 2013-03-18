obj = Object.new
if obj.respond_to?("talk")
	obj.talk
else
	puts "sorry. No talking allowed"
end
