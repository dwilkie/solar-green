class BranchesController < ApplicationController
  actions :all, except: :show
  def new
    @branch = Branch.new
    @branch.build_address
    super
  end

  def index
    @grid = BranchesGrid.new(params[:branches_grid]) do |scope|
      collection.page(params[:page]).per_page(10)
    end
  end

  private
  def permitted_params
    params.permit( branch: [:name, address_attributes: [:id, :home_number, :street,:group,:quartier,:district,:city, :country]])
  end
end
