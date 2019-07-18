require "pry"
class School
    attr_reader :roster
    def initialize school
        @school = school
        @roster = {}

    end
    def add_student (name, grade)
        # binding.pry
        if !roster[grade]
        roster[grade] = []
        end
        if !roster[grade] == []
            roster[grade] << name
        else
            roster[grade] << name
        end
    end
    def grade (grade)
        roster[grade]
    end
    def sort
        sorted = {}
        roster.each do |grade, name|
            sorted[grade] = name.sort 
        end
        sorted
    end
end