class ShoppingCartsController < ApplicationController
  def create
    cart = ShoppingCart.new
    cart.add_product(params[:product_id])
    redirect_to product_path(params[:product_id]), notice: "added to ShoppingCart"
  end

end
