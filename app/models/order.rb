class Order < ApplicationRecord
  has_many :products, dependent: :destroy
  validates :customer_name, presence: true
end
