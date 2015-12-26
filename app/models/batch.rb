class Batch < ActiveRecord::Base
  has_many :studentbatches, dependent: :destroy
  has_many :students, :through => :studentbatches

  belongs_to :course

  has_many :tutorbatches, dependent: :destroy
  has_many :tutors, :through => :tutorbatches
  
end
