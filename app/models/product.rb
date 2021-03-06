class Product < ApplicationRecord
  # validates :name, uniqueness: true
  # validates :description, length: { minimum: 10 }
  # validates :price, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 100 }
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products
  def is_discounted?
    if price < 10
      true
    elsif price >= 10
      false
    end
  end
  def tax
    tax_rate = 0.09
    tax = price * tax_rate
    tax
  end
  def total
    price + tax
  end
  def supplier
    Supplier.find_by(id: supplier_id)
  end
  def images
    Image.where(product_id: id)
  end
end
