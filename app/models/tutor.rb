class Tutor < ActiveRecord::Base

	has_many :tutorbatches, dependent: :destroy
	has_many :batches, :through => :tutorbatches

	belongs_to :user, dependent: :destroy

	
end
