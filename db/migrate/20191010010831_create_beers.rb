class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.string :brewery
      t.integer :ABV

      t.timestamps
    end
  end
end
