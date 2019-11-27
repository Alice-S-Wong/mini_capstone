class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    render "show.html.erb"
  end
end
