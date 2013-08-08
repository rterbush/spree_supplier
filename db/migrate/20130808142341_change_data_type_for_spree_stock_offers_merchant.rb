class ChangeDataTypeForSpreeStockOffersMerchant < ActiveRecord::Migration
  def change
    add_column :spree_stock_offers, :merchant_tmp, :boolean

    Spree::StockOffer.reset_column_information
    Spree::StockOffer.find(:all).each do |t|
      t.merchant_tmp = (t.merchant == '0' ? false : true)
      t.save
    end

    remove_column :spree_stock_offers, :merchant
    rename_column :spree_stock_offers, :merchant_tmp, :merchant
  end
end
