class CreateInventoryInvoiceLineItems < ActiveRecord::Migration
  def change
    create_table :inventory_invoice_line_items do |t|
      t.references :inventory_invoice, null: false
      t.references :product, null: false
      t.integer :quantity, null: false
      t.integer :unit_price, null: false
      t.integer :final_unit_price, null: false
      t.timestamps
    end
  end
end
