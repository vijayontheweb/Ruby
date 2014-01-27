class Student
	def initialize(name, id)
		@student_name = name
		@student_id = id
	end
	
	def name
		@student_name
	end
	
	def id
		@student_id
	end
	
	def set_fees(fee)
		@student_fee = fee
	end

	def fees=(fee)
		@student_fee = fee
	end
	
	def fees
		@student_fee
	end
	
end

stud1 = Student.new("vijay",123)
stud2 = Student.new("priya",456)
puts "The first student enrolled is #{stud1.name} with #{stud1.id}"
puts "The second student enrolled is #{stud2.name} with #{stud2.id}"
stud1.set_fees(100)
puts "The first student enrolled is #{stud1.name} with fees #{stud1.fees}"
# This statement looks little weird but still supported by Ruby
stud1.fees=(150)
puts "The first student #{stud1.name} has revised fees #{stud1.fees}"
# The above weird version can be written as below. syntactic sugar. whoa!
stud1.fees = 250
puts "The first student #{stud1.name} has revised fees #{stud1.fees}"