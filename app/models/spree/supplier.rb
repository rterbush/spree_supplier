module Spree
  class Supplier < ActiveRecord::Base

   attr_accessible :name, :active, :address1, :address2, :city, :zipcode,
        :state_name, :state_id, :country_id, :phone, :country_id, :abbr,
        :image_url, :master_image, :master_desc

    has_many :stock_offers, dependent: :destroy
    has_many :stock_locations
    has_many :variants, through: :stock_offers

    belongs_to :variant, class_name: 'Spree::Variant'

    belongs_to :address, class_name: 'Spree::Address'
    accepts_nested_attributes_for :address

    belongs_to :state, class_name: 'Spree::State'
    belongs_to :country, class_name: 'Spree::Country'

    #==========================================
    # Validations

    # validates_associated :address
    # validates :address,                presence: true
    validates_presence_of :name, :abbr

    #==========================================
    # Callbacks

    # after_create :create_stock_location

    scope :active, -> { where(active: true) }


  protected

    def create_stock_location
      self.stock_locations.create(active: true, country_id: self.address.country_id, name: self.name)
    end
  end
end