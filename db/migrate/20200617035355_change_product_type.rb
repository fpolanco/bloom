class ChangeProductType < ActiveRecord::Migration[6.0]
  change_table :products do |t|
    t.rename :type, :scientific_name
  end

  change_column :products, :fun_fact, :text
  #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  
end
