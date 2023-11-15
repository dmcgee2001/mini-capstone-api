class OrdersController < ApplicationController
  def create
    product = Product.find(params["product_id"])
    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = (product.price * 0.09)
    calculated_total = (calculated_subtotal * 1.09)
    @order = Order.create!(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,

    )
    render :show
  end

  def show
    @order = Order.find_by(id: params["id"])
    if current_user.id == @order.user_id
      render :show
    else
      render json: { message: "You are not the user for this order. Cannot view" }
    end
  end

  def index
    @orders = Order.all
    render :index
  end
end
