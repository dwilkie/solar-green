class InventoryLineItemsController < ApplicationController
  belongs_to :product, parent_class: Product::Base, :polymorphic => true
  belongs_to :inventory_invoice_line_item, :polymorphic => true
end
