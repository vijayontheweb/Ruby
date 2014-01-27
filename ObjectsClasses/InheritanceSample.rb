class Animal
	def canMove
		"true"
	end
end

class Man < Animal
	def canLaugh
		"true"
	end	
end
animal = Animal.new
puts "Can Animal move? "+animal.canMove
puts "What is Animal's Superclass? #{Animal.superclass}"
puts "What is Animal's Superclass's Superclass? #{Animal.superclass.superclass}"
puts "What is Animal's Superclass's Superclass's Superclass? #{Animal.superclass.superclass.superclass}" # This prints null or nothing
#Further down, below line throws NoMethodError: undefined method `superclass' for nil:NilClass
# puts "What is Animal's Superclass's Superclass's Superclass's Superclass? #{Animal.superclass.superclass.superclass.superclass}"
man = Man.new
puts "Can Man move? "+man.canMove
puts "Can Man laugh? "+man.canLaugh
puts "What is Man's Superclass? #{Man.superclass}"
puts "What is Man's Superclass's Superclass? #{Man.superclass.superclass}"
obj = Object.new
puts obj
basic = BasicObject.new
# Below line throws NoMethodError: undefined method `to_s' for #<BasicObject:0x2914170>
#puts basic
# A newly created BasicObject instance has only 7 instance methods—whereas a new instance of Object has 52.
#Ruby even provides an is_a? method that tells you whether an object has a given class either as its class or as one of its class’s ancestral classes:
puts "Is man an Object? #{man.is_a?(Object)}"
puts "Is man an Animal? #{man.is_a?(Animal)}"
puts "Is man a Man? #{man.is_a?(Man)}"
#In Ruby the behavior or capabilities of an object can deviate from those supplied by its class.
def man.toSuperMan
	"Look i have become superman"
end
puts man.toSuperMan
#Reason:
#In most cases, object individuation has to do with dynamically determined conditions at runtime; for example, you might add accessor methods to objects to 
#match the names of database columns that you don’t know until the program is running and you’ve queried the database. Or you might have a library of special
# methods that you’ve written for string objects, and that you want only certain strings to have access to.