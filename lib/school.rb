# code here!
class School
  
  attr_reader :name, :student, :grade

  STUDENTS = []

  def initialize(name)
    @name = name
  end

  def add_student(student, grade)
    STUDENTS << {grade => student}
  end
  
  def roster
    hash = {}
    STUDENTS.each do |item|
      grade = item.keys[0]
      student = item[grade]
      hash[grade] = student
    end
    hash
  end
end