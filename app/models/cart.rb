class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy # This is so that if a cart is destroyed,
                                            # we want rails to destroy the corresponding
                                            # line_items in the database

  def add_product(product)
    current_item = line_items.find_by(product_id: product.id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product.id)
    end
    current_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price}
  end

end
