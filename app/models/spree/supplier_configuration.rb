module Spree
  class SupplierConfiguration < Preferences::Configuration

    # # Restrict to one stock_location per supplier
    # preference :single_stock_location, :boolean, default: true

  end
end
