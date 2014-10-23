class InventoryInvoicesController < ApplicationController
  actions :all, except: [:show]
  def new
    @inventory_invoice = InventoryInvoice.new
    @inventory_invoice.inventory_invoice_line_items.build
    super
  end

  private
  def permitted_params
    params.permit(
      inventory_invoice: [
        :shipping_cost, :vat, :other_cost, :number, :date, { inventory_invoice_line_items_attributes: [ :product_id, :quantity, :unit_price, :final_unit_price]}
      ]
    )
  end
end
