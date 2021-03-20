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
puts "The students of Villains Academy"
puts "-------------"
students.each { |student| puts student }

# finally, we print the total number of students.
print "Overall, we have #{students.count} great students"
