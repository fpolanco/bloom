class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.string :tags
      t.string :brand
      t.float :price
      t.float :rating

      t.timestamps
    end
  end
end
