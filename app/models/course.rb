class Course < ActiveRecord::Base

	has_many :studentcourses, dependent: :destroy
	has_many :students, :through => :studentcourses

	has_many :batches, dependent: :destroy

	has_many :coursesyllabuses, dependent: :destroy
	has_many :syllabuses, :through => :coursesyllabuses

	
end
