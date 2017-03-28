def input_students
  puts ""
  puts "Enter the names of the students at Villains Academy."
  puts "To finish, just hit return twice."
  # create an empty array
  students = []
  # get the first namename = gets.chomp
  puts "Please enter the student's name."
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    puts "Please enter the student's cohort."
    cohort = gets.chomp.to_sym
    # add the student has to the array
    students << {name: name, cohort: cohort}
    if students.count == 1
      puts "Now we have #{students.count} student.  Add another name or press return to finish."
    else
      puts "Now we have #{students.count} students. Add another name or press return to finish."
  end
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
  puts "You can print students with fewer than 12 characters in their name.  Would you like to?"
  answer = gets.chomp.downcase
  if answer == "yes"
    students.each_with_index do |student, i|
      if student[:name].to_s.length < 12
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
  if names.count == 0
    puts "We have no students."
  elsif names.count == 1
    puts "We have 1 great student."
  else
    puts "Overall, we have #{names.count} great students."
  end
end

# first, we print the list of students
students = input_students
print_header
print(students)
print_footer(students)
