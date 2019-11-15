class Api::ProductsController < ApplicationController

  def index
    
    if params[:discount]
      @products = Product.where("price <= ?", "5")
    elsif params[:sort] == "price" && params[:sort_order] == "desc"
      @products = Product.all.order(:price => :desc)
    elsif params[:sort] == "price" && params[:sort_order] == "asc"
      @products = Product.all.order(:price)
    elsif params[:name] && params[:sort] == "price" && params[:sort_order] == "desc"
      @products = Product.where("price <= ?", "5").order(:price => :desc)
    elsif params[:name] && params[:sort] == "price" && params[:sort_order] == "asc"
      @products = Product.where("price <= ?", "5").order(:price)
    elsif params[:name]
      @products = Product.where("name LIKE ?", "%#{params[:name]}%")
    else
      @products = Product.all.order(:id)
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
        image_url: params[:image_url],
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
    @product.image_url = params[:image_url] || @product.image_url
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
