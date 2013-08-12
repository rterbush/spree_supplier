class AddColumnConstraintsToSpreeStockOffers < ActiveRecord::Migration
  def change
    change_table :spree_stock_offers do |t|
      t.change :sku, :string, :unique => true, :null => false
      t.change :common_sku, :string, :unique => true, :null => false
      t.change :supplier_id, :integer, :null => false
      t.change :title, :string, :null => false
      t.change :description, :text, :null => false
      t.change :mfgname, :string, :null => false
      t.change :category, :string, :null => false
      t.change :parentcategory, :string, :null => false
      t.change :gtin, :string, :null => false
      t.change :cost_price, :decimal, :precision => 8, :scale => 2, :null => false
    end
  end
end
