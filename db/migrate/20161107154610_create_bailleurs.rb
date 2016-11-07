class CreateBailleurs < ActiveRecord::Migration[5.0]
  def change
    create_table :bailleurs do |t|
      t.string :civilite
      t.string :nom
      t.string :prenom
      t.string :nomMme
      t.string :prenomMme
      t.string :nomDeux
      t.string :prenomDeux
      t.string :nomSociete
      t.integer :nRcs
      t.boolean :tva
      t.string :nomIndivision
      t.string :adresse
      t.integer :codePostal
      t.string :ville
      t.boolean :representant
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
