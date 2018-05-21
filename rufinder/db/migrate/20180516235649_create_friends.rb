class CreateFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :friends do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.boolean :status, :default => false

      t.timestamps
    end
  end
end
