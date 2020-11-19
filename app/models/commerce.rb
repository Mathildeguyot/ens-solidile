class Commerce < ApplicationRecord
  belongs_to :owner
  has_many :products
  has_one_attached :photo


  def self.search_by(search_term)
    where("LOWER(name) LIKE :search_term OR LOWER(description) LIKE :search_term", search_term: "%#{search_term.downcase}%")
  end
end
