class LifeEvent < ActiveRecord::Base
  belongs_to :person
  validates :title, presence: true,
              length: { minimum: 5 }
  validates :description, length: {maximum: 140} 
end
