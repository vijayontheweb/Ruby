class MyClass
	def myMethod1
		puts "This is my first Print method"
	end
end
class MyClass	
	def myMethod2
		puts "This is my second Print method"
	end
end

myObject = MyClass.new
myObject.myMethod1
myObject.myMethod2

#For Usage in IRB - reopening of the Time class, done for the purpose of adding new methods
#UNIX-style date format
# puts Time.new.strftime("%m-%d-%y")
# t=Time.new
# require 'time'
# puts t.xmlschema
#t.someUndefinedMethod

