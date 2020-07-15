require 'pry'

class School
  attr_reader :roster

  def initialize(name)
    @name = name

    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []

    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.keys.each { |grade| @roster[grade].sort! }

    @roster
  end
end