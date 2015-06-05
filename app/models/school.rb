class School < ActiveRecord::Base
  belongs_to :person
  # validates :end_year, numericality: { greater_than_or_equal_to: :start_year }
end
