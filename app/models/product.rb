class Product < ApplicationRecord
  def is_discounted?
    if price < 10
      true
    elsif price >= 10
      false
    end
  end
  def tax
    tax = price * 0.09
    tax = tax.round(2)
    tax
  end
  def total
    price + tax
  end
end
