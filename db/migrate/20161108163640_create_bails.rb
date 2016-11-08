class CreateBails < ActiveRecord::Migration[5.0]
  def change
    create_table :bails do |t|
      t.string :typeDeBail
      t.string :dureeDuBail
      t.date :dateDebutBail
      t.date :dateFinBail
      t.string :destinationDesLocaux
      t.integer :loyerHorsCharges
      t.integer :provisionCharges
      t.string :modaliteReglementChargesRecuperables
      t.string :revisionAutomatiqueDuLoyer
      t.integer :jourExigibiliteLoyer
      t.string :modeReglement
      t.boolean :enregistrementAutomatiqueLoyer
      t.boolean :assuranceColocation
      t.references :locataire, foreign_key: true
      t.references :bien, foreign_key: true

      t.timestamps
    end
  end
end
