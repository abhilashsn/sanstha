class Course < ActiveRecord::Base

	has_many :studentcourses
	has_many :students, :through => :studentcourses

	has_many :batches

	has_many :coursesyllabuses
	has_many :syllabuses, :through => :coursesyllabuses

	
end
