module Spree
  Variant.class_eval do

    belongs_to :supplier
    attr_accessible :supplier_id

    def supplier?
      supplier.present?
    end
  end
end