class Product < ApplicationRecord
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

  has_many :orders
  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  has_many :images
  # def images
  #   Image.where(product_id: id)
  # end
  has_many :category_products
  has_many :categories, through: :category_products
end
