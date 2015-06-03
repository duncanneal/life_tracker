class LifeEvent < ActiveRecord::Base
  belongs_to :person
  validates :description, length: {maximum: 140} 
end
