class OrdersController < ApplicationController
  def create
    product = Product.find(params["product_id"])
    price = product.price
    @order = Order.create!(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: price * params["quantity"].to_i,
      tax: (product.tax * params["quantity"].to_i),
      total: (product.total * params["quantity"].to_i),

    )
    render :show
  end

  def show
    @order = Order.find_by(id: params["id"])
    render :show
  end

  def index
    @orders = Order.all
    render :index
  end
end
