require "pry"

class School
  attr_accessor :name, :roster



  def initialize (name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade (grade)
    @roster[grade]
  end

  def sort
    sort = {}
    roster.each do|grade, names|
      sort[grade] = names.sort
    end
    sort
  end

end
