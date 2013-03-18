#print "Please enter Celcius value: "
#celsius = gets
#fahrenheit = (celsius.to_i*9/5)+32
#celsius = File.read("temp.dat")
print "the result is: "
celsius = File.read("temp.dat")
fahrenheit = (celsius.to_i*9/5)+32
print fahrenheit 
fh = File.new("out.dat","w")
fh.puts fahrenheit
#print "."
