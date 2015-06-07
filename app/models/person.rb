class Person < ActiveRecord::Base
  has_many :schools
  has_many :life_events
  accepts_nested_attributes_for :schools, :life_events
  def full_name
    [first_name, last_name].join(' ')
  end
end
