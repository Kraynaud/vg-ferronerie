class Contact < ApplicationRecord
  validates :prenom, presence: true
  validates :nom, presence: true
  validates :description, presence: true
  validates :objet, presence: true
  validates :email, presence: true
end
