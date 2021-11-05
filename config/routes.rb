Rails.application.routes.draw do

  root to: 'home#index'
  get 'home/index',to:'home#index'
  post 'orders/new'

  devise_for :users

  devise_for :owners, controllers: {
    sessions:      'owners/sessions',
    passwords:     'owners/passwords',
    registrations: 'owners/registrations'
  }

  resources :orders
  resources :home, only: [:index]
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :items
  resources :items do
    resources :orders, only: [:index, :create]
  end

  namespace :owners do
    resources :members, only: [:index ]
    resources :reserve, only: [:index, :edit, :update]
    get 'dashboard', to: 'dashboard#show'
  end

  namespace :admin do
    resources :items
  end

end
