# let's put all the students into an array.

# students = [
#   { name: "Dr. Hannibal Lecter", cohort: :november },
#   { name: "Darth Vador", cohort: :november },
#   { name: "Nurse Ratched", cohort: :november },
#   { name: "Michael Corleone", cohort: :november },
#   { name: "The Wicked Witch of the West", cohort: :november },
#   { name: "Terminator", cohort: :november },
#   { name: "Freddy Krueger", cohort: :november },
#   { name: "The Joker", cohort: :november },
#   { name: "Joffrey Baratheon", cohort: :november },
#   { name: "Norman Bates", cohort: :november },

# ]
# and print them
def print_header
  puts "The students of my cohort at Makers"
  puts "-------------"
end

def print(names)
  names.each { |name|
    puts "#{names.index(name) + 1}. #{name[:name]} (#{name[:cohort]} cohort)"
  }
end

# finally, we print the total number of students.
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def input_students
  puts "PLease enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  # get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty?
    students << { name: name, cohort: :november }
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  students
end

students = input_students
print_header()
print(students)
print_footer(students)
