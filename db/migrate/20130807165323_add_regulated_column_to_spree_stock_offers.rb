class AddRegulatedColumnToSpreeStockOffers < ActiveRecord::Migration
  def change
    add_column :spree_stock_offers, :regulated, :boolean
  end
end
