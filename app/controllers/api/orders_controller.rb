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
    subtotal = Product.find_by(id: params[:product_id]).price * params[:quantity].to_i
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: subtotal,
      tax: subtotal * tax_rate,
      total: subtotal * (1 + tax_rate)
    )
    @order.save
    render 'show.json.jb'
  end
end
