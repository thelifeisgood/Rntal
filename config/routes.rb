Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :bailleurs do
    resources :representant_bailleurs
  end

  resources :biens

  resources :locataires do
    resources :garant_locataires
    resources :representant_locataires
  end

  resources :bails

end
