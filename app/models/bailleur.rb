class Bailleur < ApplicationRecord
  belongs_to :user

  CIVILITES = ["Mr", "Mme", "Mr et Mme", "Mr et Mr", "Mme et Mme", "Sci", "Sci familiale"]
  validates :name, presence: true
  validates :civilite, inclusion: { in: CIVILITES }
end
