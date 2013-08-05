class CreateTableSpreeSupplier < ActiveRecord::Migration
  def change
    create_table "spree_supplier", :force => true do |t|
    t.string    "name"
    t.string    "abbr"
    t.string    "image_url"
    t.datetime  "created_at",                :null => false
    t.datetime  "updated_at",                :null => false
    t.string    "address1"
    t.string    "address2"
    t.string    "city"
    t.integer   "state_id"
    t.string    "state_name"
    t.integer   "country_id"
    t.string    "zipcode"
    t.string    "phone"
    t.boolean   "active"
    t.boolean   "master_image"
    t.boolean   "master_desc"
  end
end
