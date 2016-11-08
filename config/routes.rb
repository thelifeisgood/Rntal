Rails.application.routes.draw do
  resources :biens
  resources :representant_bailleurs
  resources :bailleurs
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
