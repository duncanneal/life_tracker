class References < ActiveRecord::Migration
  def change
    add_reference  :schools, :person, index: true, foreign_key: true
    add_reference  :life_events, :person, index: true, foreign_key: true
  end
end
