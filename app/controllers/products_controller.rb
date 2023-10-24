class ProductsController < ApplicationController
  def one_product
    @product = Product.first
    render :show
  end

  def one_product2
    product2 = Product.second
    render json: {
             id: product2.id,
             name: product2.name,
             price: product2.price,
             image_url: product2.image_url,
             description: product2.description,
           }
  end

  def one_product3
    product3 = Product.third
    render json: product3
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
