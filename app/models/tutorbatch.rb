class Tutorbatch < ActiveRecord::Base

	belongs_to :tutor, dependent: :destroy
	belongs_to :batch, dependent: :destroy
end
