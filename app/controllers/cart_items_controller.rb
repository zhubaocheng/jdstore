class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def update
    @cart = current_cart
    @cart_item = @cart.cart_items.find_by(product_id: params[:id])

    if @cart_item.product.quantity >= cart_item_params[:quantity].to_i
      @cart_item.update(cart_item_params)
      flash[:notcie] = "更新成功！"
    else
      flash[:warning] = "库存不足！"
    end

    redirect_to carts_path
  end

  def destroy
    @cart = current_cart
    @cart_item = @cart.cart_items.find_by(product_id: params[:id])
    @product = @cart_item.product
    @cart_item.destroy

    redirect_to :back
    flash[:notice] = "#{@product.title}已成功删除。"
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity)
  end
end
