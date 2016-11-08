class Bail < ApplicationRecord
  belongs_to :locataire
  belongs_to :bien
end
