class Batch < ActiveRecord::Base
  has_many :studentbatches
  has_many :students, :through => :studentbatches

  has_many :coursebatches
  has_many :courses, :through => :coursebatches

  has_many :tutorbatches
  has_many :tutors, :through => :tutorbatches
  
end
