module Spree
  class Supplier < ActiveRecord::Base

    has_many :stock_locations, dependent: :destroy
    has_many :stock_offers

    belongs_to :variant, class_name: 'Spree::Variant'

    validates_presence_of :name

    attr_accessible :name, :active, :address1, :address2, :city, :zipcode,
        :state_name, :state_id, :country_id, :phone, :country_id

    scope :active, -> { where(active: true) }

  end
end