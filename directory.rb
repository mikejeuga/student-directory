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
  #{name[:name]}'s height is #{name[:size]}cm and loves to do some #{name[:hobby]}.".center(60)
  }
  puts names.group_by { |name| name[:cohort] }.values
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
  puts names.count > 1 ? "Overall, we have #{names.count} great students" : "Overall, we have #{names.count} great student"
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
    puts students.count > 1 ? "Now we have #{students.count} students" : "Now we have #{students.count} student"
    #get another name from the user
    name = gets.chomp

    if name.empty?
      break
    end

    puts "Which cohort was the student part of?"
    cohort = gets.sub("\n", "")
    cohort.empty? ? cohort = "March".to_sym : (months.include?(cohort.capitalize) ? cohort.to_sym : cohort = gets.chomp)
    puts "When was the student born?"
    dob = gets.chomp
    puts "How tall is the student ?"
    size = gets.chomp
    puts "Does the student have any hobby?"
    hobby = gets.chomp
  end
  students
end

def interactive_menu
  students = []
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"

    selection = gets.chomp

    case selection
    when "1"
      students = input_students
    when "2"
      print_header()
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "I don't know what you meant, try again."
    end
  end
end

interactive_menu()
