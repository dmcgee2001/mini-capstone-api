class ProductsController < ApplicationController
  def one_product
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def all_products
    @products = Product.all
    render :index
  end

  def random
    pool = Product.all
    sample = pool.sample
    render json: sample
  end
end
