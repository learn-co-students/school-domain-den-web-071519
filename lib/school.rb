class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster.include?(grade)
            @roster[grade] << name 
        else
          @roster[grade] = [name]   
        end
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        @roster.each do |grade, students|
            students.sort!
        end
    end

end