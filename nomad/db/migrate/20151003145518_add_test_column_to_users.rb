class AddTestColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :test, :string
  end
end
