class InventoryInvoicesController < ApplicationController
  actions :all, except: [:show]
  def new
    @inventory_invoice = current_user.inventory_invoices.build
    @inventory_invoice.inventory_invoice_line_items.build
    super
  end

  def index
    @grid = InventoryInvoicesGrid.new(params[:users_grid]) do |scope|
      scope.page(params[:page]).per_page(10).decorate
    end
  end

  private
  def permitted_params
    params.permit(
      inventory_invoice: [
        :shipping_cost, :vat, :other_cost, :number, :date, :user_id, :branch_id,
        {
          inventory_invoice_line_items_attributes: [ :product_id, :quantity, :unit_price, :final_unit_price]
        }
      ]
    )
  end
end
