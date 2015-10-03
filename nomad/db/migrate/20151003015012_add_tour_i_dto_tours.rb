class AddTourIDtoTours < ActiveRecord::Migration
  def change
  	add_column :tours, :tour_id, :integer
  end
end
