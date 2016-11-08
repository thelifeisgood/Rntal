class CreateRepresentantBailleurs < ActiveRecord::Migration[5.0]
  def change
    create_table :representant_bailleurs do |t|
      t.string :civilite
      t.string :nom
      t.string :prenom
      t.string :adresse
      t.integer :codePostal
      t.string :ville
      t.references :bailleur, foreign_key: true

      t.timestamps
    end
  end
end
