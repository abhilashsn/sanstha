class Course < ActiveRecord::Base

	has_many :studentcourses
	has_many :students, :through => :studentcourses

	has_many :batches

	
end
