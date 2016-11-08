json.extract! garant_locataire, :id, :civilite, :nom, :prenom, :adresse, :codePostal, :ville, :locataire_id, :created_at, :updated_at
json.url garant_locataire_url(garant_locataire, format: :json)