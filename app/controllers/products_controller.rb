class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def index
    if params["category"]
      category = Category.find_by(name: params["category"])
      @products = category.products
    else
      @products = Product.all
    end
    render :index
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      inventory: params["inventory"],
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
      inventory: params["inventory"] || @product.inventory,
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
