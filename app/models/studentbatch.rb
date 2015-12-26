class Studentbatch < ActiveRecord::Base
	
	belongs_to :batch, dependent: :destroy
	belongs_to :student, dependent: :destroy
	
end
