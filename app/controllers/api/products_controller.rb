class Api::ProductsController < ApplicationController

  def all_products
    render 'products.json.jb'
  end

end
