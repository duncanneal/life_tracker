class Person < ActiveRecord::Base
  has_many :school
  has_many :life_event

  def full_name
    self.first_name + " " + self.last_name
  end
end
