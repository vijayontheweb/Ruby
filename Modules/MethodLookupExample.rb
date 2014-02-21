# This example illustrates the Method Lookup Mechanism

#The basic rules governing method lookup and the ordering of the method search
#path may be summarized as follows. To resolve a message into a method, an object
#looks for the method in
# 1) Its class
# 2) Modules mixed into its class, in reverse order of inclusion
# 3) The class’s superclass
# 4) Modules mixed into the superclass, in reverse order of inclusion
# 5) Likewise, up to Object (and its mix-in Kernel) and BasicObject

module Mod
	def a_method
		puts "method called from module"
	end
end

class SuprClass
	include Mod
	
	def a_method
		puts "method called from Super Class"
		super
	end
end

class SubClass < SuprClass
	def a_method		
		puts "method called from Sub Class"
		super
	end
end

instance = SubClass.new
instance.a_method