class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_secure_password
  has_many :orders
  has_many :carted_products
  has_many :products, through: :carted_products
end
