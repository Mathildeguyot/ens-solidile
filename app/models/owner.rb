class Owner < ApplicationRecord
  has_many :commerces
  has_one_attached :photo
end
