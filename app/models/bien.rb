class Bien < ApplicationRecord
  belongs_to  :bailleur
  has_many    :bails
end
