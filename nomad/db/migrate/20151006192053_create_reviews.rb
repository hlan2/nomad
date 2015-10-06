class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.datetime "created_at", null: false
      t.datetime "updated_up", null: false
      t.string :title
      t.string :body
      t.integer :user_id
      t.integer :tour_id
    end
  end
end
