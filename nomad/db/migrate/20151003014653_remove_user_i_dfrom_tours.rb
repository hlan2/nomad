class RemoveUserIDfromTours < ActiveRecord::Migration
  def change
  	remove_column :tours, :user_id
  end
end
