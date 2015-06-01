class LifeEvent < ActiveRecord::Base
  validates :description, length: {maximum: 140} 
end
