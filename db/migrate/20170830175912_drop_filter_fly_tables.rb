class DropFilterFlyTables < ActiveRecord::Migration[5.1]
  def change
    drop_table :shops, force: :cascade
    drop_table :categories, force: :cascade
    drop_table :collections, force: :cascade
    drop_table :product_tags, force: :cascade
    drop_table :product_types, force: :cascade
    drop_table :products, force: :cascade
    drop_table :tags, force: :cascade
  end
end
