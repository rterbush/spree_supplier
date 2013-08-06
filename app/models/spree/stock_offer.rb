module Spree
  class StockOffer < ActiveRecord::Base

    belongs_to :supplier, class_name: 'Spree::Supplier'

    attr_accessible :name, :presentation, :cost_price,
                    :product_id, :option_values_attributes, :price,
                    :weight, :height, :width, :depth, :sku, :cost_currency

    has_one :image_url

    validates :cost_price, numericality: { greater_than_or_equal_to: 0, allow_nil: false } if self.table_exists? && self.column_names.include?('cost_price')

    before_validation :set_cost_currency

    private
      def set_cost_currency
        self.cost_currency = Spree::Config[:currency] if cost_currency.nil? || cost_currency.empty?
      end
  end
end