class AddTourIDtoReviews < ActiveRecord::Migration
  def change
  	add_column :reviews, :tour_id, :integer
  end
end
