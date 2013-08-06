class AddDropshipToSpreeStockOffers < ActiveRecord::Migration
  def change
    add_column :spree_stock_offers, :dropship, :boolean
  end
end
