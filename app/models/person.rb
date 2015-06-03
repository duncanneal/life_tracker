class Person < ActiveRecord::Base
  has_many :schools
  has_many :life_events
  accepts_nested_attributes_for :schools, :life_events

  def full_name
    self.first_name + " " + self.last_name
  end
end
