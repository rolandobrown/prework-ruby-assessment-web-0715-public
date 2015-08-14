require 'pry'

# code you methods for the 003_method spec here
# Note: You will need to pass the school variable to each of these methods to include it in scope

school = {
:name => "Happy Funtime School",
:location => "NYC",
:instructors => [
  {:name=>"Blake", :subject=>"being awesome" },
  {:name=>"Ashley", :subject=>"being better than blake"},
  {:name=>"Jeff", :subject=>"karaoke"}
],
:students => [
  {:name => "Marissa", :grade => "B"},
  {:name=>"Billy", :grade => "F"},
  {:name => "Frank", :grade => "A"},
  {:name => "Sophie", :grade => "C"}
]
}

def get_grade(school, student_name)
  school[:students].each do |student|
		if student[:name] == student_name
			return student[:grade]
		end
	end
end

def update_subject(school, instructor_name, new_subject)
	school[:instructors].each do |instructor|
		if instructor[:name] == instructor_name
			instructor[:subject] = new_subject
		end
	end
end

def add_new_student(school, student_name)
  school[:students].push({:name => "#{student_name}"})
end

def add_new_key(school, new_key, new_value)
	school[new_key.to_sym] = new_value
end
