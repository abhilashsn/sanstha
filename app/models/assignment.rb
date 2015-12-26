class Assignment < ActiveRecord::Base
	belongs_to :project, dependent: :destroy
	belongs_to :student, dependent: :destroy
end
