class ChangeDataTypeForSpreeStockOfferDescription < ActiveRecord::Migration
  def change
    change_table :spree_stock_offers do |t|
      t.change :description, :text
    end
  end
end
