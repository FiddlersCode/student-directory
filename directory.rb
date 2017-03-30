def input_students
  puts ""
  puts "Enter the names of the students at Villains Academy."
  puts ""
  puts "To finish, just hit return twice."
  puts ""
  # create an empty array
  students = [
   {name: "Dr. Hannibal Lecter", cohort: :january},
   {name: "Darth Vader", cohort: :december},
   {name: "Nurse Ratched", cohort: :march},
   {name: "Michael Corleone", cohort: :april},
   {name: "Alex DeLarge", cohort: :march},
   {name: "The Wicked Witch of the West", cohort: :january},
   {name: "Terminator", cohort: :july},
   {name: "Freddy Krueger", cohort: :january},
   {name: "The Joker", cohort: :december},
   {name: "Joffrey Baratheon", cohort: :march},
   {name: "Norman Bates", cohort: :november},
   {name: "Loki", cohort: :december}
 ]

end

 # and then print them
def print_header(students)
  if students.length > 0
    puts "The students of Villains Academy"
    puts "----------"
  end
end

def print(students)
  # print students by cohort
  cohorts_found = students.map {|student| student[:cohort]}
  cohorts_found = cohorts_found.uniq
  counter = students.length
  puts counter
  n = 0
  while counter > 0
    students.each do | hash |
      hash.each do |key, value|
        if value == cohorts_found[n]
          puts "#{students[n][:name]} (#{students[n][:cohort]} cohort)"
          n += 1
          counter -= 1
        end
      end
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
print_header(students)
print(students)
print_footer(students)
