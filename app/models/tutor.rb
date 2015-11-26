class Tutor < ActiveRecord::Base

	has_many :tutorbatches
	has_many :batches, :through => :tutorbatches

	
end
