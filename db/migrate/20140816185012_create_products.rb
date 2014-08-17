class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :image_url
      t.boolean :slideshow
      t.references :category, index: true

      t.timestamps
    end
  end
end
