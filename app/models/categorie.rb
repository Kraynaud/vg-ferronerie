class Categorie < ApplicationRecord
  has_many :realisations
  has_one_attached :photo

  validates :titre, presence: true
  validates :description, presence: true

end
