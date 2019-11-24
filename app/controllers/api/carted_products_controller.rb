class Api::CartedProductsController < ApplicationController
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
end
