class Product < ApplicationRecord
  belongs_to :order
  belongs_to :region
  validates :title, presence: true
end
