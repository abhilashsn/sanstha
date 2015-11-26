class Course < ActiveRecord::Base

	has_many :studentcourses
	has_many :students, :through => :studentcourses

	has_many :coursebatches
	has_many :batches, :through => :coursebatches
end
