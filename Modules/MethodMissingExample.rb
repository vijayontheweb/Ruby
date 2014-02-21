#MethodMissingExample

# The Kernel module provides an instance method called method_missing. This method is executed whenever an object receives a message that it doesn’t know how to
# respond to—that is, a message that doesn’t match a method anywhere in the object’s method-lookup path. You override method_missing, either on a singleton basis for the object you’re calling the method on, or in the object’s class or
# one of that class’s ancestors. When you override method_missing, you need to imitate the method signature of the original. The first argument is the name of the missing method—the message that
# you sent the object and that it didn't understand. The *args parameter sponges up any remaining arguments. The first argument, moreover, comes to you in the form of a symbol object. If you
# want to examine or parse it, you need to convert it to a string.

class SuprClass	
	def a_method
		puts "method called from Super Class"	
	end
	
	def method_missing(m, *args)
		puts "You can't call #{m} with args #{args} on this object; please try again."
	end
end

class SubClass < SuprClass
	def a_method		
		puts "method called from Sub Class"
		super
	end
	
	def method_missing(m, *args)
		if m.to_s.start_with?("sub_")
			puts "method_missing of SubClass called: #{m} with args #{args}"
		else
			super
		end
	end	
end

instance = SubClass.new
instance.a_method
instance.sub_class_understandable_alien_method(9,10,11)
instance.alien_method(7,8,9)
