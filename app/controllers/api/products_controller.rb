class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, only: [:create, :update, :destroy]
  def index
    #Look at this stuff later?
    # if params[:search]
    #   @products = Product.where("name LIKE ?", "%#{params[:search]}%")
    # else
    #   @products = Product.all
    # end
    # if params[:discount]
    #   @products = @products.where("price <= ?", 5)
    # end
    # if params[:sort] && params[:sort_order]
    #   @products = @products.order(params[:sort] => params[:sort_order])
    # else
    #   @products = @products.order(:id)
    # end
    # p "*" * 50
    # p current_user
    # p "*" * 50
    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    else
      @products = Product.all
    end
    render 'index.json.jb'
  end

  def show
    user_id = params[:id]
    @product = Product.find_by(id: user_id)
    render 'show.json.jb'
  end

  def create
    @product = Product.new(
        name: params[:name],
        price: params[:price],
        description: params[:description],
        in_stock: params[:in_stock]
      )
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    user_id = params[:id]
    @product = Product.find_by(id: user_id) 
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.in_stock = params[:in_stock] || @product.in_stock
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render 'show.json.jb'
  end

end
