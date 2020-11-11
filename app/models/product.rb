class Product < ApplicationRecord
  belongs_to :commerce
  has_one_attached :photo
end
