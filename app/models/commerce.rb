class Commerce < ApplicationRecord
  belongs_to :owner
  has_many :products
  has_one_attached :photo
end
