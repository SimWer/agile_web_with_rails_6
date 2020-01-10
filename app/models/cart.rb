class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy # This is so that if a cart is destroyed,
                                            # we want rails to destroy the corresponding
                                            # line_items in the database
end
