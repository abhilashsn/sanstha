class CourseSyllabus < ActiveRecord::Base
	belongs_to :course
	belongs_to :syllabus
end
