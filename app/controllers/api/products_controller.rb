class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render 'products.json.jb'
  end

  # def one_product
  #   @one_product = Product.find_by(name: params[:name])
  #   render 'one_product.json.jb'
  # end

  # def pirate_ship
  #   @pirate_ship = Product.first
  #   render 'pirate_ship.json.jb'
  # end

  # def dragon_egg
  #   @dragon_egg = Product.second
  #   render 'dragon_egg.json.jb'
  # end

  # def pandoras_box
  #   @pandoras_box = Product.third
  #   render 'pandoras_box.json.jb'
  # end

  # def killer_robot
  #   @killer_robot = Product.fourth
  #   render 'killer_robot.json.jb'
  # end

  # def balloon
  #   @balloon = Product.fifth
  #   render 'balloon.json.jb'
  # end

end
