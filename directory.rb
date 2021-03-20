# let's put all the students into an array.
students = [
  "Dr. Hannibal Lecter",
  "Darth Vador",
  "Nurse Ratched",
  "Michael Corleone",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates",
]

# and print them
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(names)
  names.each { |name| puts name }
end

# finally, we print the total number of students.
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

print_header()
print(students)
print_footer(students)
