class UpdatePriceAndDescriptionAndAddInStock < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :description, :text
    change_column :products, :price, :decimal, {precision: 8, scale: 2}
    add_column :products, :in_stock?, :boolean
  end
end
