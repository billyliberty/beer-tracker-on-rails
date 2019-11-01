class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :review
      t.decimal :price
      t.string :store
      t.date :date_of_purchase
      t.references :user, foreign_key: true
      t.references :beer, foreign_key: true

      t.timestamps
    end
  end
end
