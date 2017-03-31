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
  puts list_by_month = students.group_by {|input| input[:cohort]}
  puts "\nStudents listed by cohort:\n"
    list_by_month.map do | key, value|
      puts "\n#{key}"
        for i in 0...value.length do
        puts "#{value[i][:name]}, #{value[i][:country]}"
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
