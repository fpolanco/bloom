class ChangeProductsTable < ActiveRecord::Migration[6.0]
  change_table :products do |t|
    t.remove :price, :rating, :tags
    t.rename :brand, :fun_fact
  end
end
