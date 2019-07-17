require "pry"

class School
    
    attr_reader :name, :roster

    def initialize(name)
    @name = name
    @roster = {}
    end

    def add_student(name, grade)
        if !roster[grade]
            roster[grade] = []
        end

        if !roster[grade].include?(name)
            roster[grade].push(name)
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        new_roster = {}
        roster.each do |key, value|
            if !new_roster[key]
                new_roster[key] = value.sort
            end
        end
        new_roster
    end
end