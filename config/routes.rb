Rails.application.routes.draw do

  get 'dashboards/search'

  devise_for :users
  root to: 'pages#home'

  resources :bailleurs do
    resources :biens, only: [:new, :create]
    resources :representant_bailleurs
  end

  resources :biens, except: [:new, :create]

  resources :locataires do
    resources :garant_locataires
    resources :representant_locataires
  end

  resources :bails

end
