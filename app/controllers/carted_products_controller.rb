class CartedProductsController < ApplicationController
  class ProductsController < ApplicationController
    before_action :authenticate_user

    def index
      @carted_products = CartedProduct.all
      render :index
    end

    def create
      @carted_product = CartedProduct.new(
        user_id: params["user_id"],
        product_id: params["product_id"],
        quantity: params["quantity"],
        status: params["stauts"],
        order_id: params["order_id"],
      )
      @carted_product.save
      if @carted_product.valid?
        render :show
      else
        render json: { errors: @carted_product.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def destroy
      carted_product = CartedProduct.find_by(id: params["id"])
      carted_product.delete
      render json: { message: "successfully deleted" }
    end
  end
end
