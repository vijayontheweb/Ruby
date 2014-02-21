#SuperMethodLookupExample

#The way super handles arguments is as follows:
#1)Called with no argument list (empty or otherwise), super automatically forwards the arguments that were passed to the method from which it’s called.
#2)Called with an empty argument list—super()—it sends no arguments to the higher-up method, even if arguments were passed to the current method.
#3)Called with specific arguments—super(a,b,c)—it sends exactly those arguments.

class SuprClass	
	attr_reader :a, :b, :c 
	
	def a_method(a,b,c)
		puts "method called from Super Class"
		puts a		
		puts b
		puts c
	end
end

class SubClass < SuprClass
	def a_method(a,b,c)		
		puts "method called from Sub Class"
		super
	end
end

instance = SubClass.new
instance.a_method(5,10,15)