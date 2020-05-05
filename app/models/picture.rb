class Picture < ApplicationRecord
  belongs_to :realisation
  has_one_attached :photo, dependent: :destroy
end
