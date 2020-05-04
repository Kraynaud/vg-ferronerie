class Realisation < ApplicationRecord
  belongs_to :user
  belongs_to :categorie
  has_many_attached :photos

  validates :titre, presence: true
  validates :description, presence: true
  validates :lieu, presence: true
end
