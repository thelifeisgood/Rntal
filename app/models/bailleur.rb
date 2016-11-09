class Bailleur < ApplicationRecord
  belongs_to  :user
  has_many    :biens
  has_many    :representant_bailleurs

  CIVILITES = ["Mr", "Mme", "Mr et Mme", "Mr et Mr", "Mme et Mme", "Sci", "Sci familiale"]
  validates :name, presence: true
  validates :civilite, inclusion: { in: CIVILITES }
end
