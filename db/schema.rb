# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161108163640) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bailleurs", force: :cascade do |t|
    t.string   "civilite"
    t.string   "nom"
    t.string   "prenom"
    t.string   "nomMme"
    t.string   "prenomMme"
    t.string   "nomDeux"
    t.string   "prenomDeux"
    t.string   "nomSociete"
    t.integer  "nRcs"
    t.boolean  "tva"
    t.string   "nomIndivision"
    t.string   "adresse"
    t.integer  "codePostal"
    t.string   "ville"
    t.boolean  "representant"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_bailleurs_on_user_id", using: :btree
  end

  create_table "bails", force: :cascade do |t|
    t.string   "typeDeBail"
    t.string   "dureeDuBail"
    t.date     "dateDebutBail"
    t.date     "dateFinBail"
    t.string   "destinationDesLocaux"
    t.integer  "loyerHorsCharges"
    t.integer  "provisionCharges"
    t.string   "modaliteReglementChargesRecuperables"
    t.string   "revisionAutomatiqueDuLoyer"
    t.integer  "jourExigibiliteLoyer"
    t.string   "modeReglement"
    t.boolean  "enregistrementAutomatiqueLoyer"
    t.boolean  "assuranceColocation"
    t.integer  "locataire_id"
    t.integer  "bien_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["bien_id"], name: "index_bails_on_bien_id", using: :btree
    t.index ["locataire_id"], name: "index_bails_on_locataire_id", using: :btree
  end

  create_table "biens", force: :cascade do |t|
    t.string   "typeDeBien"
    t.string   "regimeJuridique"
    t.string   "nombreDePieces"
    t.string   "adresse"
    t.integer  "codePostal"
    t.string   "ville"
    t.integer  "surfaceHabitable"
    t.string   "descriptionDuBien"
    t.integer  "bailleur_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["bailleur_id"], name: "index_biens_on_bailleur_id", using: :btree
  end

  create_table "garant_locataires", force: :cascade do |t|
    t.string   "civilite"
    t.string   "nom"
    t.string   "prenom"
    t.string   "adresse"
    t.integer  "codePostal"
    t.string   "ville"
    t.integer  "locataire_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["locataire_id"], name: "index_garant_locataires_on_locataire_id", using: :btree
  end

  create_table "locataires", force: :cascade do |t|
    t.string   "civilite"
    t.string   "nom"
    t.string   "prenom"
    t.string   "nomDeux"
    t.string   "prenomDeux"
    t.string   "nomSociete"
    t.integer  "nRcs"
    t.string   "adresseSiege"
    t.integer  "codePostalSiege"
    t.string   "villeSiege"
    t.boolean  "representant"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_locataires_on_user_id", using: :btree
  end

  create_table "representant_bailleurs", force: :cascade do |t|
    t.string   "civilite"
    t.string   "nom"
    t.string   "prenom"
    t.string   "adresse"
    t.integer  "codePostal"
    t.string   "ville"
    t.integer  "bailleur_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["bailleur_id"], name: "index_representant_bailleurs_on_bailleur_id", using: :btree
  end

  create_table "representant_locataires", force: :cascade do |t|
    t.string   "civilite"
    t.string   "nom"
    t.string   "prenom"
    t.string   "adresse"
    t.integer  "codePostal"
    t.string   "ville"
    t.integer  "locataire_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["locataire_id"], name: "index_representant_locataires_on_locataire_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "bailleurs", "users"
  add_foreign_key "bails", "biens"
  add_foreign_key "bails", "locataires"
  add_foreign_key "biens", "bailleurs"
  add_foreign_key "garant_locataires", "locataires"
  add_foreign_key "locataires", "users"
  add_foreign_key "representant_bailleurs", "bailleurs"
  add_foreign_key "representant_locataires", "locataires"
end
