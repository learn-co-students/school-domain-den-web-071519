

class School
    attr_accessor :name, :roster

    def initialize name
        @name = name
        @roster = {}
    end

    def add_student student_name, grade
        roster[grade]||= []
        roster[grade] << student_name
    end
    
    def grade student_name
        roster[student_name]
    end

    def sort
        sorted_hash = {}
        roster.each do |grade, student|
            sorted_hash[grade] = student.sort
        end
        sorted_hash
    end

end

