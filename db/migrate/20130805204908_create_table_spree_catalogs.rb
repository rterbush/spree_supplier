class CreateTableSpreeStockOffer < ActiveRecord::Migration
  def change
    create_table  "spree_stock_offer", :force => true do |t|
      t.integer   "supplier_id"
      t.string    "sku",           :default => "",    :null => false
      t.decimal   "weight",        :precision => 8, :scale => 2
      t.decimal   "height",        :precision => 8, :scale => 2
      t.decimal   "width",         :precision => 8, :scale => 2
      t.decimal   "depth",         :precision => 8, :scale => 2
      t.string    "title"
      t.string    "description"
      t.string    "image"
      t.string    "mfgname"
      t.string    "mfgno"
      t.string    "mfgabbr"
      t.string    "mfgurl"
      t.datetime  "created_at"
      t.datetime  "updated_at"
      t.datetime  "deleted_at"
      t.decimal   "cost_price",    :precision => 8, :scale => 2
      t.decimal   "msrp_price",    :precision => 8, :scale => 2
      t.decimal   "mmap_price",    :precision => 8, :scale => 2
      t.decimal   "handling",      :precision => 8, :scale => 2
      t.string    "cost_currency"
      t.integer   "caseqty"
      t.integer   "unitqty"
      t.string    "parentcategory"
      t.string    "category"
      t.string    "categoryabbr"
      t.string    "categoryid"
      t.string    "productgrp"
      t.string    "groupoption"
      t.string    "status"
      t.string    "hazmat"
      t.string    "merchant"
      t.string    "restrictions"
      t.string    "gtin"
      t.integer   "count"
    end

    add_index "spree_catalogs", ["gtin"], :name => "index_spree_catalogs_on_gtin"
    add_index "spree_catalogs", ["distributor_id"], :name => "index_spree_catalogs_on_distributor_id"
    add_index "spree_catalogs", ["sku"], :name => "index_spree_catalogs_on_sku"
  end
end

