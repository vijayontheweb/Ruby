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
end

stud1 = Student.new("vijay",123)
stud2 = Student.new("priya",456)
puts "The first student enrolled is #{stud1.name} with #{stud1.id}"
puts "The second student enrolled is #{stud2.name} with #{stud2.id}"
