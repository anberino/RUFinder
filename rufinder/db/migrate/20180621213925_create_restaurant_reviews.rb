class CreateRestaurantReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_reviews do |t|
      t.decimal :rating
      t.string :comment
      t.references :restaurant, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
