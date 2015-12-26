class Project < ActiveRecord::Base
	has_many :assignments
	has_many :students, :through => :assignments

	has_many :milestones, dependent: :destroy
	has_many :tasks, dependent: :destroy
end
