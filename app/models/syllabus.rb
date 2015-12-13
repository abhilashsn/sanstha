class Syllabus < ActiveRecord::Base

	has_many :coursesyllabuses
	has_many :courses, :through => :coursesyllabuses
end
