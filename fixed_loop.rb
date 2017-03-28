def input_students
  puts "Please enter the student's name."
  puts "To finish, just hit return twice."
  # create an empty array
  students = []
  # get the first namename = gets.chomp
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    puts "Please enter the student's cohort."
    cohort = gets.chomp.to_sym
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
  puts "You can print students whose names begin with a specific letter.  Would you like to?"
  answer = gets.chomp.downcase
  if answer == "yes"
    puts "Which letter would you choose?"
    letter = gets.chomp.upcase
    students.each_with_index do |student, i|
      if student[:name][0] == letter
        puts "#{i + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
      end
    end
  else
    students.each_with_index do |student, i|
    puts "#{i + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
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
