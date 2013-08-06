class AddCommonSkuToSpreeStockOffers < ActiveRecord::Migration
  def change
    add_column :spree_stock_offers, :common_sku, :string
    add_index :spree_stock_offers, :common_sku
  end
end
