class CartsController < ApplicationController
  def clean
    curren_cart.clean!
    flash[:alert] = "购物车已清空！"
    redirect_to carts_paths
  end
end
