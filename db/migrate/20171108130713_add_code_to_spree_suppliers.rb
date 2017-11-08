class AddCodeToSpreeSuppliers < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_suppliers, :code, :string
    add_index :spree_suppliers, :code, unique: true
  end
end
