class Employee
def set_name(string)
	@name = string
end

def get_name
	@name
end
end
emp = Employee.new
emp.set_name("vijay")
puts "The Employee name is: "+emp.get_name
