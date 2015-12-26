class Task < ActiveRecord::Base
	belongs_to :project, dependent: :destroy
	belongs_to :milestone, dependent: :destroy
end
