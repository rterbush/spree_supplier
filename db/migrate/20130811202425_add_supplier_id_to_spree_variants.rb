class AddSupplierIdToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :supplier_id, :integer
  end
end
