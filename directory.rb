# let's put all the students into an array.
# and print them
def print_header
  puts "The students of my cohort at Makers"
end

def print(names)
  if names.length == 0
    return
  end
  names.map { |name|
    puts "#{names.index(name) + 1}. #{name[:name]} enrolled in the (#{name[:cohort]} cohort) was born on #{name[:dob]}.
#{name[:name]}'s height is #{name[:size]}cm and loves to do some #{name[:hobby]}.".center(1)
  }
end

def conditional_print(students)
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
  students = []

  months = ["January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"]

  puts "Please enter the names of the students"
  name = gets.chomp
  if name.empty?
    return students
  end
  puts "Which cohort was the student part of?"
  cohort = gets.chomp
  cohort.empty? ? cohort = "March".to_sym : (months.include?(cohort.capitalize) ? cohort.to_sym : cohort = gets.chomp)
  puts "When was the student born?"
  dob = gets.chomp
  puts "How tall is the student ?"
  size = gets.chomp
  puts "Does the student have any hobby?"
  hobby = gets.chomp

  puts "To finish, just hit return twice"
  while !name.empty?
    students << { name: name, cohort: cohort, dob: dob, size: size, hobby: hobby }
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
    if name.empty?
      break
    end
    puts "Which cohort was the student part of?"
    cohort = gets.chomp
    cohort.empty? ? cohort = "March".to_sym : (months.include?(cohort.capitalize) ? cohort.to_sym : cohort = gets.chomp)
    students[:cohort] = gets.chomp
    puts "When was the student born?"
    dob = gets.chomp
    puts "How tall is the student ?"
    size = gets.chomp
    puts "Does the student have any hobby?"
    hobby = gets.chomp
  end
  students
end

students = input_students
print_header()
print(students)
print_footer(students)
