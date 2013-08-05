module Spree
  class StockOffer < ActiveRecord::Base

    belongs_to :supplier, class_name: 'Spree::Supplier'

    attr_accessible :name, :presentation, :cost_price,
                    :product_id, :option_values_attributes, :price,
                    :weight, :height, :width, :depth, :sku, :cost_currency

    has_one :image_url

    has_one :default_price,
      class_name: 'Spree::Price',
      conditions: proc { { currency: Spree::Config[:currency] } },
      dependent: :destroy

    validate :check_price
    validates :price, numericality: { greater_than_or_equal_to: 0 }, presence: true, if: proc { Spree::Config[:require_master_price] }
    validates :cost_price, numericality: { greater_than_or_equal_to: 0, allow_nil: true } if self.table_exists? && self.column_names.include?('cost_price')

    before_validation :set_cost_currency
    after_save :save_default_price


  end
end