# code here
require 'pry'
class School
   
    def initialize (name)
        @name = name
        @roster = {}
        
    end
    def roster
        @roster
    end

    def add_student (name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_hash = {}
        new =  @roster.map  do |grade ,names| 
        sorted_hash[grade] = names.sort
        end
    sorted_hash
    end
end

        #@roster.sort_by {@name} 
#@roster.map {|grade, name| name.sort}
        # @roster.each {|grade, name| name.sort{ |a, b| a<=>b}}