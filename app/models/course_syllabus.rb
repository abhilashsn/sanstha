class CourseSyllabus < ActiveRecord::Base
	belongs_to :course, dependent: :destroy
	belongs_to :syllabus, dependent: :destroy
end
