class Studentsource < ActiveRecord::Base

	belongs_to :student
	belongs_to :source
end
