class AddAssociationToVariant < ActiveRecord::Migration
  def change
    add_column :spree_suppliers, :variant_id, :integer
    add_index "spree_suppliers", ["variant_id"], :name => "index_spree_suppliers_on_variant_id"
  end
end
