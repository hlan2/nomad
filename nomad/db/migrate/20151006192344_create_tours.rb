class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :tour_name
      t.string :tour_description
      t.string :tour_city
      t.integer :user_id
      t.datetime "created_at",       null: false
      t.datetime "updated_at",       null: false
    end
  end
end
