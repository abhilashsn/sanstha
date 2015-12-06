class Project < ActiveRecord::Base
	has_many :assignments
	has_many :students, :through => :assignments

	has_many :milestones
	has_many :tasks
end
