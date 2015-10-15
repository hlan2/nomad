class AddTourOptionsToTours < ActiveRecord::Migration
  def change
    add_column :tours, :dog_friendly, :boolean
    add_column :tours, :family_friendly, :boolean
  end
end