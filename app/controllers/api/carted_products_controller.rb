class Api::CartedProductsController < ApplicationController
  def index
    if current_user
      @cart = CartedProduct.where(status: "carted")
      @cart = @cart.where(user_id: current_user.id)
      render "index.json.jb"
    else
      render json: {message: "You must log in to view items in your cart"}, status: :unauthorized
    end
  end

  def create
    if current_user
      @carted_product = CartedProduct.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        status: "carted"
      )
      @carted_product.save
      render "show.json.jb"
    else
      render json: {message: "You must log in to add items to your cart"}, status: :unauthorized
    end
  end

  def destroy
    @carted_product = CartedProduct.find(params[:id])
    if current_user.id == @carted_product.user_id
      @carted_product.status = "removed"
      @carted_product.save
      render "show.json.jb"
    else
      render json: {message: "Unauthorized to remove item"}, status: :unauthorized
    end
  end
end
