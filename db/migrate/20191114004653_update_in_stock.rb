class UpdateInStock < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :in_stock?, :in_stock
  end
end
