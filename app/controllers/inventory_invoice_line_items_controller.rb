class InventoryInvoiceLineItemsController < ApplicationController
  belongs_to :product, parent_class: Product::Base
end
