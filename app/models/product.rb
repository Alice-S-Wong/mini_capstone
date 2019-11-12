class Product < ApplicationRecord
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
    tax = tax.round(2)
    tax
  end
  def total
    price + tax
  end
end
