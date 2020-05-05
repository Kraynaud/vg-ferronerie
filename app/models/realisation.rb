class Realisation < ApplicationRecord
  belongs_to :user
  belongs_to :categorie
  has_many :pictures, dependent: :destroy
  # has_many_attached :photos, dependent: :destroy

  validates :titre, presence: true
  validates :description, presence: true
  validates :lieu, presence: true
end
