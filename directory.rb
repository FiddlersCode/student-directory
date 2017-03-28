def input_students
  puts ""
  puts "Enter the names of the students at Villains Academy."
  puts ""
  puts "To finish, just hit return twice."
  puts ""
  # create an empty array
  students = []
  # get the first namename = gets.chomp
  puts "Please enter the student's name."
  name = gets.chomp.capitalize
  # while the name is not empty, repeat this code
  while !name.empty? do
    puts "Please enter the student's cohort month."
    cohort = gets.chomp.capitalize
      while cohort.empty? do
        puts "You can't move on without adding the student's cohort month."
        cohort = gets.chomp.capitalize
      end
    puts "Please enter the student's country or planet of birth."
    birth_country = gets.chomp.capitalize
      while birth_country.empty? do
        puts "You can't move on without adding the student's contry or planet of birth."
        birth_country = gets.chomp.capitalize
      end
    # add the student has to the array
    students << {name: name, cohort: cohort, birth_country: birth_country}
    if students.count == 1
      puts "Now we have #{students.count} student.  \nAdd another name or press return to finish."
    else
      puts "Now we have #{students.count} students. \nAdd another name or press return to finish."
    end
    # gets another name from the user
    name = gets.chomp.capitalize
  end
  students
end

 # and then print them
def print_header
  puts "The students of Villains Academy"
  puts "----------"
end

def print(students)
  number_of_students = students.count
  n = 0
  while number_of_students > 0
    puts "Student: #{students[n][:name]}\nCohort: #{students[n][:cohort]}\nCountry of Birth: #{students[n][:birth_country]}"
    number_of_students -= 1
    n += 1
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
