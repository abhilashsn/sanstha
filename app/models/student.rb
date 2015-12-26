class Student < ActiveRecord::Base

    validates_presence_of :name, :email, :about, :address, :gender, :qualification, :preference

	has_many :studentsources, dependent: :destroy
	has_many :sources, :through => :studentsources

	has_many :studentbatches, dependent: :destroy
	has_many :batches, :through => :studentbatches

    has_many :studentcourses, dependent: :destroy
    has_many :courses, :through => :studentcourses

    has_many :assignments, dependent: :destroy
    has_many :projects, :through => :assignments



    


    def self.tcourse
    	puts "Courses"
    	Student.all.each do |student|
    		student.courses.each do |course|
    			course.name
    		end
    	end
    end


    
end
