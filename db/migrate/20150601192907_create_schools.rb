class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :title
      t.date :start_year
      t.date :end_year

      t.timestamps null: false
    end
  end
end
