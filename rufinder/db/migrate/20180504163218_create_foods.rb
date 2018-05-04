class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :type
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
