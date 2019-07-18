require "pry"

class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        if @roster[grade] == nil
            @roster[grade] = [student]
        else
            @roster[grade] << student
        end
    end
    
    def grade(grade)
        @grade = @roster[grade]
    end

    def sort
        @sort = @roster
        @sort.each do |grade, students|
            @sort[grade] = students.sort
        end
    end
    #binding.pry
end


