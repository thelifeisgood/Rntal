class Bien < ApplicationRecord
  attr_accessor :bailleur_id

  belongs_to  :bailleur
  has_many    :bails
end
