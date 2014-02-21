module StackBehaviorModule
def stack
	puts ".. call made to stack .."
	@stack||=[]
end
def push_onto_stack(obj)
	puts obj+" is pushed onto stack"
	stack.push(obj)
end
def pop_from_stack
	obj = stack.pop
	puts obj+" is popped from stack"	
end
end