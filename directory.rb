# let's put all the students into an array.
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

def conditional_print(students)
  #   select_a_letter = gets.chomp
  #   students.each { |student|
  #     if student[:name][0] == select_a_letter and student[:name].length <= 12
  #       puts "#{student[:name]}"
  #     end
  #   }
  i = 0
  while i < students.length
    puts students[i][:name]
    i += 1
  end
end

# finally, we print the total number of students.
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def input_students
  puts "Please enter the names of the students"
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
conditional_print(students)
print_footer(students)
