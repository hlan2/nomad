class ChangeUpdatedUpToUpdatedAt < ActiveRecord::Migration
  def change
    rename_column :reviews, :updated_up, :updated_at
  end
end
