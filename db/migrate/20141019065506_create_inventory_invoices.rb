class CreateInventoryInvoices < ActiveRecord::Migration
  def change
    create_table :inventory_invoices do |t|
      t.integer :shipping_cost, null: false
      t.integer :vat, null: false
      t.integer :other_cost, null: false, default: 0
      t.string :number
      t.date :date
      t.timestamps
    end
  end
end
