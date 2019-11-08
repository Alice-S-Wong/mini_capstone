class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render 'index.json.jb'
  end

  def show
    user_id = params[:id]
    @product = Product.find_by(id: user_id)
    render 'show.json.jb'
  end

  def create
    @product = Product.new(
        name: params[:input_name],
        price: params[:input_price],
        image_url: params[:input_image_url],
        description: params[:input_description]
      )
    @product.save
    render 'show.json.jb'
  end

  def update
    user_id = params[:id]
    @product = Product.find_by(id: user_id)
    @product.name = params[:input_name]
    @product.price = params[:input_price]
    @product.image_url = params[:input_image_url]
    @product.description = params[:input_description]
    @product.save
    render 'show.json.jb'
  end

end
