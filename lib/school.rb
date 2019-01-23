class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
        # self.roster[grade] ||= []
        # if grade already exists, do nothing.
        # if grade does not exist, create it.
        # follow-up either way by adding name to grade.
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    self.roster.each do |grade, students|
    students.sort!
  end
end
