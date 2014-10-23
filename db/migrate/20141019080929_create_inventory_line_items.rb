class CreateInventoryLineItems < ActiveRecord::Migration
  def change
    create_table :inventory_line_items do |t|
      t.references :inventory_invoice_line_item, null: false
      t.references :product, null: false
      t.integer :unit_price, null: false
      t.integer :final_unit_price, null: false
      t.string :state, null: false, default: "in_stock"
      t.timestamps
    end
  end
end
