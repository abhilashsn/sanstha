class Source < ActiveRecord::Base

	has_many :studentsources, dependent: :destroy
	has_many :students, :through => :studentsources, dependent: :destroy
end
