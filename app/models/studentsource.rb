class Studentsource < ActiveRecord::Base

	belongs_to :student, dependent: :destroy
	belongs_to :source, dependent: :destroy
end
