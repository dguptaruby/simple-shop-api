class Product < ApplicationRecord
  has_many :product_orders
  belongs_to :region
  validates :title, presence: true
end
