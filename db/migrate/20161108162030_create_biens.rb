class CreateBiens < ActiveRecord::Migration[5.0]
  def change
    create_table :biens do |t|
      t.string :typeDeBien
      t.string :regimeJuridique
      t.string :nombreDePieces
      t.string :adresse
      t.integer :codePostal
      t.string :ville
      t.integer :surfaceHabitable
      t.string :descriptionDuBien
      t.references :bailleur, foreign_key: true

      t.timestamps
    end
  end
end
