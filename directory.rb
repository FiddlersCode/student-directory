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
    cohort = gets.chomp.capitalize.to_sym
      if cohort.empty?
        puts "Why didn't you enter a cohort month?  We'll assign you to April by default."
        puts ""
        cohort = "April"
      end
    cohort
    puts "Please enter the student's country or planet of birth."
    birth_country = gets.chomp.capitalize
      if birth_country.empty?
        puts "Well, you didn't put anything in so we'll pretend you're Vulcan."
        birth_country = "Vulcan."
      end
    puts "You have entered #{name}, #{cohort} and #{birth_country}."
    puts ""
    puts "Are you happy with this?"
    happy = gets.chomp.downcase
      if happy != "no"
        students << {name: name, cohort: cohort, birth_country: birth_country}
        if students.count == 1
          puts "Now we have #{students.count} student.  \nAdd another name or press return to finish."
        else
          puts "Now we have #{students.count} students. \nAdd another name or press return to finish."
        end
      else
      name.empty?
      puts "Please enter the student's name."
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
  # print students by cohort
  puts "Which cohort month would you like to see the students from?"
  selected_cohort = gets.chomp.capitalize.to_sym
    students.each do |student|
      if student[:cohort] == selected_cohort
        puts "#{student[:name]} (#{student[:cohort]} cohort) #{{student[:birth_country]}}"
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
