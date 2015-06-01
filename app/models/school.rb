class School < ActiveRecord::Base
  alidates :end_year, numericality: {greater_than_or_equal_to: :start_year}
end
