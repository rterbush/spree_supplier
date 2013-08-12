Spree::StockLocation.class_eval do

  belongs_to :supplier
  attr_accessible :supplier_id

  scope :with_supplier, ->(supplier) { where(supplier_id: supplier) }

end