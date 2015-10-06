class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.string :message
      t.datetime "created_at",   null: false
      t.datetime "updated_at",   null: false
    end
  end
end
