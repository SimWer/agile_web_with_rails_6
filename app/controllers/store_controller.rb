class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  before_action :increment_counter
  def index
    @products = Product.order :title
  end
end
