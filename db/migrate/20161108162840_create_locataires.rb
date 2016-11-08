class CreateLocataires < ActiveRecord::Migration[5.0]
  def change
    create_table :locataires do |t|
      t.string :civilite
      t.string :nom
      t.string :prenom
      t.string :nomDeux
      t.string :prenomDeux
      t.string :nomSociete
      t.integer :nRcs
      t.string :adresseSiege
      t.integer :codePostalSiege
      t.string :villeSiege
      t.boolean :representant
      t.references :bailleur, foreign_key: true

      t.timestamps
    end
  end
end
