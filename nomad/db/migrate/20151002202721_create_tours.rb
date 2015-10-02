class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :tour_name
      t.string :tour_description

      t.timestamps null: false
    end
  end
end
