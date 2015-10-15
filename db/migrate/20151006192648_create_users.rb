class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.datetime "created_at",      null: false
      t.datetime "updated_at",      null: false
      t.string :email
      t.string :password_digest
      t.string :firstname
      t.string :lastname
    end
  end
end
