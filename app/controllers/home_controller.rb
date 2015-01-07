class HomeController < ApplicationController
  def index
    @branch = Branch.find(current_user.branch_id)
    @user = User.where(branch_id: @branch.id)
    @inventory = InventoryInvoice.where(branch_id: @branch.id)
  end
end
