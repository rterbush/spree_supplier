class Spree::Admin::SuppliersController < Spree::Admin::ResourceController

  new_action.before :set_country

  private

    def set_country
      if Spree::Config[:default_country_id].present?
        @supplier.country = Spree::Country.find(Spree::Config[:default_country_id])
      else
        @suplier.country = Spree::Country.find_by_iso('US')
      end
    end
end
