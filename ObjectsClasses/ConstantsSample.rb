#Constants Example - Constants are referred by double colons in Capital Letters
class Flower
	NAMES = ["Jasmine","Rose","Lotus"]
end	
	
puts "The flowers available are #{Flower::NAMES}"

puts "The value of Pi is #{Math::PI}"
#List of other constants are 
#>> RUBY_VERSION
#=> "1.9.1"
#>> RUBY_PATCHLEVEL
#=> 0
#>> RUBY_RELEASE_DATE
#=> "2008-12-30"
#>> RUBY_REVISION
#=> 21203
#>> RUBY_COPYRIGHT
#=> "ruby - Copyright (C) 1993-2008 Yukihiro Matsumoto"

#Will throw the warning -> ConstantsSample.rb:22: warning: already initialized constant A
A = 1
A = 2
puts A

# There’s no warning, because we’re not redefining a constant. Rather, we’re modifying an array—and that array has no particular knowledge that it has been 
# assigned to a constant. It just does what you ask it to.
flowers = Flower::NAMES
flowers << "Lily"
puts "The flowers available are #{Flower::NAMES}"

#Will work fine without any warning
b = 3
b = 4
puts b
