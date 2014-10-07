class Product::BaseController < ApplicationController
  actions :all, :except => [ :show ]

  private
  def permitted_params
    params.permit( resource_request_name => [:name, :description, :power_rating, :voltage] )
  end
end
