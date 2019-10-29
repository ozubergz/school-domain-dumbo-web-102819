# code here!
class School
    
  attr_reader :name, :student, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if(!@roster[grade])
      @roster[grade] = []
    else
      @roster[grade] << student
    end
  end

  def roster
    @roster
  end
  
end