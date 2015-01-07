class AddBranchIdToInventoryInvoice < ActiveRecord::Migration
  def change
    add_column :inventory_invoices, :branch_id, :integer
  end
end
