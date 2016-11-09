class Locataire < ApplicationRecord
  belongs_to  :bailleur
  has_many    :bails
  has_many    :representant_locataires
  has_many    :garant_locataires
end
