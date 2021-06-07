Rails.application.routes.draw do
  # devise_for :users, controllers: {
  #   sessions: "users/sessions",
  #   registrations: "users/registrations"
  # }
  devise_for :users
  root to: 'home#index'
  resources :home, only: [:index]
  resources :users, only: [:show, :edit, :update, :destroy]

  resources :items, only: [:index, :new, :create, :show, :edit]
  resources :owner, only: [:index ]
   resources :owner_members, only: [:index ]
   resources :owner_reserve, only: [:index ]
  # namespace :items do
  #   resources :import_beef, :import_pork, :import_chicken, :other, :national_beef, :national_pork, :national_chicken
  # end

end
