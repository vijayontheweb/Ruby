# The mix-in operation is achieved with the call to include.

load "SampleModule.rb"

class ModuleTester
include SampleModule
end
mt = ModuleTester.new
mt.call_a_method