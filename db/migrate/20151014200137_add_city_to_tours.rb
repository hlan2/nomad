class AddCityToTours < ActiveRecord::Migration
  def change
    add_column :tours, :country, :string
  end
end
