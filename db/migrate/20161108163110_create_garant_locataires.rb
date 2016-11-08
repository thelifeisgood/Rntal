class CreateGarantLocataires < ActiveRecord::Migration[5.0]
  def change
    create_table :garant_locataires do |t|
      t.string :civilite
      t.string :nom
      t.string :prenom
      t.string :adresse
      t.integer :codePostal
      t.string :ville
      t.references :locataire, foreign_key: true

      t.timestamps
    end
  end
end
