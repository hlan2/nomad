class RemoveTestColumnFromUsers < ActiveRecord::Migration
  def change
		remove_column :users, :test
  end
end
