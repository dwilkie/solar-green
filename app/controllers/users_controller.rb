class UsersController < ApplicationController
  actions :all, except: :show
  def new
    @user = User.new
    @user.build_address
  end

  def index
    @grid = UsersGrid.new(params[:users_grid]) do |scope|
      scope.page(params[:page]).per_page(10)
    end
  end

  private
  def permitted_params
    params.permit(user: [:name, :email, :password, :phone,:confirm_password, :branch_id, :admin, address_attributes:[:id, :home_number, :street, :group, :quartier, :district, :city, :country]])
  end
end
