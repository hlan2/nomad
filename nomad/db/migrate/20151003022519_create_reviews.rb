class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|

      t.timestamps null: false
      t.string :title
      t.string :body
      t.integer :review_id
    end
  end
end
