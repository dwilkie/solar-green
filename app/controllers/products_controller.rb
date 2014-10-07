class ProductsController < ApplicationController
  def index
    @products = Product::Base.all
  end

  def new
  end
end
