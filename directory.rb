def input_students
  puts "Please enter the student's name."
  puts "To finish, just hit return twice."
  # create an empty array
  students = []
  # get the first namename = gets.chomp
  name = gets.chomp
  puts "Please enter the student's cohort."
  cohort = gets.chomp.to_sym
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student has to the array
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    # gets another name from the user
    name = gets.chomp
  end
  # return the aray of students
  students
  end

 # and then print them
def print_header
  puts "The students of Villains Academy"
  puts "----------"
end

def print(students)
  students.each_with_index do |student, i|
    puts "#{i + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# first, we print the list of students
students = input_students
print_header
print(students)
print_footer(students)
