class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render 'index.json.jb'
  end

  def show
    @order = Order.find_by(id: params[:id])
    if current_user.id == @order.user_id
      render 'show.json.jb'
    else
      render json: {message: 'User unauthorized to access order'}, status: :unauthorized
    end
  end

  def create
    tax_rate = 0.09
    subtotal = 0
    cart = CartedProduct.where(status: "carted")
    cart = cart.where(user_id: current_user.id)
    cart.each do |carted_product|
      subtotal += carted_product.quantity * carted_product.product.price
    end
    tax = subtotal * tax_rate
    total = tax + subtotal
    @order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total
    )
    @order.save
    cart.each do |carted_product|
      purchased_product = carted_product
      purchased_product.status = "purchased"
      purchased_product.order_id = @order.id
      purchased_product.save
    end
    render 'show.json.jb'
  end
end
