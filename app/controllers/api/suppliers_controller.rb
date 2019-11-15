class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render "index.json.jb"
  end
  def show
    @supplier = Supplier.find_by(id: params[:id])
    render "show.json.jb"
  end
  def create
    @supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number]
      )
  end
end
