class AddIndexForSupplierIdToSpreeVariants < ActiveRecord::Migration
  def change
    add_index :spree_variants, :supplier_id
  end
end
