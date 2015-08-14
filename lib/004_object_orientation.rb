class School

attr_reader :ranking
attr_accessor :name, :location, :students, :instructors

@@schools = []
@@schools_count = 0

  def initialize(name, location, ranking)
     @name = name
     @location = location
     @ranking = ranking
     @students = []
     @instructors = []
     @@schools << self
     @@schools_count += 1
  end

  def self.all
		@@schools
	end

	def self.count
		@@schools_count
	end

  def self.reset_all
		@@schools = []
		@@schools_count = 0
	end

  def add_student (name, grade, semester)
    @students << {
      :name => name,
      :grade => grade,
      :semester => semester
    }
  end

  def remove_student(name)
    @students.each do | student |
			student.delete if :name == name
		end
  end
end
