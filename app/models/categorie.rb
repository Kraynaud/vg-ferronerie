class Categorie < ApplicationRecord
  has_many :realisations, dependent: :destroy
  has_one_attached :photo, dependent: :destroy

  validates :titre, presence: true
  validates :description, presence: true

end
