class Batch < ActiveRecord::Base
  has_many :studentbatches
  has_many :students, :through => :studentbatches

  belongs_to :course

  has_many :tutorbatches
  has_many :tutors, :through => :tutorbatches
  
end
