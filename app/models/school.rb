class School < ActiveRecord::Base
  validates :end_year, numericality: {greater_than_or_equal_to: :start_year}
end
