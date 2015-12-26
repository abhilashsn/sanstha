class Milestone < ActiveRecord::Base
	has_many :tasks, dependent: :destroy
	belongs_to :project, dependent: :destroy
end
