employee = Object.new
def employee.name
"vijay anand"
end

def employee.title
"project lead"
end

def employee.company
"CSC"
end

print "The candidate Mr."
print employee.name
print " works for "
print employee.company
print " as a "
print employee.title

print "The candidate Mr.#{employee.name} works for #{employee.company} as a #{employee.title}"
