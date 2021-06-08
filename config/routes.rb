Rails.application.routes.draw do
  # devise_for :users, controllers: {
  #   sessions: "users/sessions",
  #   registrations: "users/registrations"
  # }
  devise_for :users
  root to: 'home#index'
  resources :home, only: [:index]
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :owner, only: [:index, :new, :create ]
  resources :items
  namespace :admin do
    resources :items
  end

end
