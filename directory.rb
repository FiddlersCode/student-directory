@students = []

def interactive_menu
  load_students
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def process(selection)
  case selection
  when "1"
    # input the students
    @students = input_students
  when "2"
  show_students
  when "3"
  save_students
  when "4"
  load_students
  when "9"
    exit # this will terminate the program
  else
    puts "I don't know what you meant, try again!"
  end
end

def input_students
  puts ""
  puts "Enter the names of the students at Villains Academy."
  puts ""
  puts "To finish, just hit return twice."
  puts ""
  puts "Please enter the student's name."
  @name = STDIN.gets.chomp.capitalize
  while !@name.empty? do
    puts "Please enter the student's cohort month."
    @cohort = STDIN.gets.chomp.capitalize.to_sym
      if @cohort.empty?
        puts "Why didn't you enter a cohort month?  We'll assign you to April by default."
        puts ""
        @cohort = "April"
      end
    @cohort
    puts "Please enter the student's country or planet of birth."
    @birth_country = STDIN.gets.chomp.capitalize
      if @birth_country.empty?
        puts "Well, you didn't put anything in so we'll pretend you're Vulcan."
        @birth_country = "Vulcan"
      end
    puts "You have entered #{@name}, #{@cohort} and #{@birth_country}."
    puts ""
    puts "Are you happy with this?"
    happy = STDIN.gets.chomp.downcase
      if happy != "no"
        add_students
        if @students.count == 1
          puts "Now we have #{@students.count} student.  \nAdd another name or press return to finish."
        else
          puts "Now we have #{@students.count} students. \nAdd another name or press return to finish."
        end
      else
      @name.empty?
      puts "Please enter the student's name."
      end
    # STDIN.gets another name from the user
    @name = STDIN.gets.chomp.capitalize
  end
  @students
end

def add_students
  @students << {name: @name, cohort: @cohort, birth_country: @birth_country}
end

def show_students
  print_header
  print_students_list
  print_footer(@students)
end

def print_header
  if @students.length > 0
    puts "The students of Villains Academy"
    puts "----------"
  end
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort, from #{student[:birth_country]})"
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

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort], student[:birth_country]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students(filename = "students.csv")
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
    @name, @cohort, @birth_country = line.chomp.split(',')
    add_students
  end
  file.close
end

def try_load_students
  filename = ARGV.first # first argument from the command line
  return if filename.nil? # get out of the method if it isn't given
  if File.exists?(filename)
    load_students(filename)
  else
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

interactive_menu
