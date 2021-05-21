Rails.application.routes.draw do
<<<<<<< Updated upstream
  get 'items/index'
  devise_for :users
  root to: 'items#index'
=======
  # devise_for :users, controllers: {
  #   sessions: "users/sessions",
  #   registrations: "users/registrations"
  # }
  devise_for :users
  root to: 'home#index'
  resources :home, only: [:index]
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :items
  # namespace :items do
  #   resources :import_beef, :import_pork, :import_chicken, :other, national_beef, :national_pork, :national_chicken
  # end
>>>>>>> Stashed changes
end
