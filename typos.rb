def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty?
    # add the student hash to the array
    students << { :name => name, :cohort => :november }
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print_names(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  if names.count > 0
    print "Overall, we have #{names.count} great students"
  end
end

students = input_students
print_header
print_names(students)
print_footer(students)
