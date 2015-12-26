class Syllabus < ActiveRecord::Base

	has_many :coursesyllabuses, dependent: :destroy
	has_many :courses, :through => :coursesyllabuses
end
