class MyClass
	def myMethod
		puts "This is my Print method"
	end
	
	def myString
		"This is my Print String"
	end
end

myObject = MyClass.new
myObject.myMethod
puts myObject.myString