class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def index
    @products = Product.all
    render :index
    pp current_user
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      description: params["inventory"],
      supplier_id: params["supplier_id"],
    )
    @product.save
    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.update(
      name: params["name"] || @product.name,
      price: params["price"] || @product.price,
      description: params["description"] || @product.description,
      description: params["inventory"] || @product.inventory,
      supplier_id: params["supplier_id"] || @product.supplier_id,
    )
    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.delete
    render json: { message: "successfully deleted" }
  end
end
