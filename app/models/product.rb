class Product < ApplicationRecord
  has_many :category_products
  has_many :categories, through: :category_products
  belongs_to :supplier
  has_many :images
  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :orders, through: :carted_products
  # validates :name, :price, presence: true
  # validates :name, uniqueness: true
  # validates :name, length: { in: 1..30 }
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, length: { maximum: 500 }
  # validates :image, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: "must be a URL for GIF, JPG or PNG image." }

  def is_discounted?
    if price <= 10
      return true
    else
      return false
    end
  end

  def tax
    tax = price * 0.09
    return tax
  end

  def total
    total = price * 1.09
    return total
  end

  def categories
    category_products.map do |category_product|
      category_product.category.name
    end
  end
end
