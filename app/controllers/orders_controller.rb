class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    products = current_user.carted_products.where(status: "carted")
    index = 0
    cart_subtotal = 0
    cart_tax = 0
    while index < products.length
      v_id = products[index][:product_id]
      product = Product.find_by(id: v_id)
      calculated_subtotal = product.price
      calculated_tax = (product.price * 0.09)
      calculated_total = (calculated_subtotal + calculated_tax)
      cart_subtotal += calculated_subtotal
      cart_tax += calculated_tax
      index += 1
    end
    cart_total = cart_subtotal + cart_tax
    @order = Order.create!(
      user_id: current_user.id,
      subtotal: cart_subtotal,
      tax: cart_tax,
      total: cart_total,
    )
    render :show
  end

  def show
    @order = current_user.orders.find_by(id: params["id"])
    render :show
  end

  def index
    @orders = current_user.orders
    render :index
  end
end
