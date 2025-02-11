require "csv"
@students = [] # an empty array accessible to all methods

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit" # 9 because we'll be adding more items
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def process(selection)
  case selection
  when "1"
    input_students
    puts "You have entered a new name."
  when "2"
    show_students
    puts "These are all the students."
  when "9"
    puts "Au revoir!"
    exit # this will cause the program to terminate
  when "3"
    save_students
    puts "list of students saved"
  when "4"
    load_students
    puts "the list of students have been loaded to the file."
  else
    puts "I don't know what you meant, try again"
  end
end

def list_insert(name, cohort)
  @students << { name: name, cohort: cohort }
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = STDIN.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty?
    # add the student hash to the array
    list_insert(name, :march)
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = STDIN.gets.chomp
  end
end

def show_students
  print_header
  print_student_list
  print_footer
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  # open the file for writing
  puts "Enter a file name, if nothing is entered your file will be name students.csv."
  file_naming = STDIN.gets.chomp
  if file_naming.empty?
    file_naming = "students.csv"
  end
  CSV.open(file_naming, "w") do |csv|
    # iterate over the array of students
    @students.each do |student|
      csv << [student[:name], student[:cohort]]
    end
  end
end

def load_students(filename = "students.csv")
  File.open(filename, "r") do |file|
    file.readlines.each do |line|
      name, cohort = line.chomp.split(",")
      CSV.foreach(filename) { |row|
        name, cohort = row
        list_insert(name, cohort)
      }
    end
  end
end

def try_load_students
  filename = ARGV.first # first argument from the command line
  if filename.nil? # get out of the method if it isn't given
    filename = "students.csv"
  end

  if File.exists?(filename) # if it exists
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exist
    puts "Sorry, #{filename} doesn't exist."
    exit # quit the program
  end
end

try_load_students
interactive_menu
