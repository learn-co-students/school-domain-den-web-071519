require 'pry'

class School
  attr_accessor :roster

   def initialize(school)
     @school = school
     @roster = {}
   end

   def add_student(student_name, grade)
     if @roster.keys.include?(grade)
       @roster[grade].push(student_name)
     else
     @roster[grade] = [student_name]
    end
   end

   def grade(grade)
     @roster[grade]
   end

   def sort
    @roster = @roster.each do |grade, students|
      students.sort!
      # binding.pry
    end
   end

end
