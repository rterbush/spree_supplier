class AddSupplierIdColumnToSpreeStockItems < ActiveRecord::Migration
  def change
    add_column :spree_stock_items, :supplier_id, :integer
    add_index :spree_stock_items, :supplier_id, :name => "index_spree_stock_items_on_supplier_id"
  end
end
