class AddLatitudeAndLongitudeToModel < ActiveRecord::Migration
  def change
    add_column :tours, :latitude, :float
    add_column :tours, :longitude, :float
    add_column :tours, :address, :string
    add_column :tours, :city, :string

  end
end
