class RemoveTourIDfromTours < ActiveRecord::Migration
  def change
  	remove_column :tours, :tour_id
  end
end
