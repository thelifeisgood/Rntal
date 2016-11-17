class Locataire < ApplicationRecord
  has_many    :bails
  has_many    :representant_locataires
  has_many    :garant_locataires
end
