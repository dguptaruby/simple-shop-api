class Region < ApplicationRecord
  has_many :products
  validates :title, presence: true
end
