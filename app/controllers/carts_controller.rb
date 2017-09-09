class CartsController < ApplicationController

  def clean
    current_cart.clean!
    flash[:notice] = "购物车已清空！"
    redirect_to carts_path
  end

  def checkout
    @order = Order.new
  end
end
