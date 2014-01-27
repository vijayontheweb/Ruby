class EmployeeUnautomate
	def initialize(name,age)
		@name = name
		@age = age		
	end
	
	def name=(name)
		@name = name
	end
	
	def age=(age)
		@age = age
	end
	
	def name
		@name
	end
	
	def age
		@age
	end	
end

class EmployeeAutomate
	
	def initialize(name,age,designation,sex,company)
		@name = name
		@age = age
		@designation = designation	
		@sex = sex
		@company = company
	end

	# get/set methods defined in EmployeeUnautomate can be optimised as defined in EmployeeAutomate
	# The elements that start with colons (:name, and so on) are symbols
	# Ruby provides a built-in shortcut that automatically creates a method that reads and returns the value of the instance variable with the same name 
	# as the method (give or take an @)	
	# The attr_reader (attribute reader) method automatically writes for you the getter method. 
	# And there’s an attr_writer method for setter method
	# And there’s an attr_accessor method for getter+setter method
	# And there’s also an attr method for creating a reader and optionally a writer method (if the second argument is true)
	
	attr_reader :name, :age #can be read only 
    attr_writer :name, :age #can be write only
	attr_accessor :designation #can be both read and write
	attr :sex # same as attr_reader
	attr :company, true # same as attr_accessor
end


empUnauto = EmployeeUnautomate.new("vijay",31)
empAuto = EmployeeAutomate.new("priya",26,"designer","female","priya industries ltd")
puts "The first Employee enrolled is #{empUnauto.name} with age #{empUnauto.age}"
empUnauto.name = "anand"
empUnauto.age = 32
puts "The first Employee enrolled is #{empUnauto.name} with age #{empUnauto.age}"
puts "The second Employee enrolled is #{empAuto.name} with age #{empAuto.age} and title #{empAuto.designation}. Is #{empAuto.sex} and works for #{empAuto.company}"
empAuto.name = "kunhivalapil"
empAuto.age = 27
empAuto.designation = "evangelist"
# empAuto.sex = "male" #throws an error as it is defined as read only
empAuto.company = "vijay motors"
puts "The second Employee enrolled is #{empAuto.name} with age #{empAuto.age} and title #{empAuto.designation}. Is #{empAuto.sex} and works for #{empAuto.company}"