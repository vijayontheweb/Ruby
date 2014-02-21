load "StackBehaviorModule.rb"
class StackOfPlates
	include StackBehaviorModule
end

plates = StackOfPlates.new
plates.push_onto_stack("one")
plates.push_onto_stack("two")
plates.push_onto_stack("three")
puts "plates available in stack:"
puts plates.stack
puts "plate popped from stack:"
puts plates.pop_from_stack
puts "plates available in stack:"
puts plates.stack