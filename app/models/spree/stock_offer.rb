module Spree
  class StockOffer < ActiveRecord::Base

    belongs_to :supplier, class_name: 'Spree::Supplier'
    belongs_to :variant, class_name: 'Spree::Variant'

    attr_accessible :name, :cost_price, :price, :weight, :height, :width, :depth, :sku, :cost_currency

    validates_presence_of :supplier_id
#    validates_uniqueness_of :common_sku
    validates :cost_price, numericality: { greater_than_or_equal_to: 0, allow_nil: false } if self.table_exists? && self.column_names.include?('cost_price')

    before_validation :set_cost_currency

    private
      def set_cost_currency
        self.cost_currency = Spree::Config[:currency] if cost_currency.nil? || cost_currency.empty?
      end
  end
end
