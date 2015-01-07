class AddUserIdToInventoryInvoice < ActiveRecord::Migration
  def change
    add_column :inventory_invoices, :user_id, :integer
  end
end
