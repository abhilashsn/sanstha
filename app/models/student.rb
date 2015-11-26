class Student < ActiveRecord::Base

	has_many :studentsources
	has_many :sources, :through => :studentsources

	has_many :studentbatches
	has_many :batches, :through => :studentbatches

    has_many :studentcourses
    has_many :courses, :through => :studentcourses

    
end
