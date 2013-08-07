module Spree
  Variant.class_eval do

    has_many :suppliers, through: :stock_offers

  end
end