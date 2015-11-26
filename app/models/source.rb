class Source < ActiveRecord::Base

	has_many :studentsources
	has_many :students, :through => :studentsources
end
