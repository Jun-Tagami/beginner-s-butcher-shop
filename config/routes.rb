Rails.application.routes.draw do

   get 'home/index',to:'home#index'
  post 'orders/new'

  resources :orders

  devise_for :users

  devise_for :owners, controllers: {
    sessions:      'owners/sessions',
    passwords:     'owners/passwords',
    registrations: 'owners/registrations'
  }

  root to: 'home#index'
  resources :home, only: [:index]
  resources :users, only: [:show, :edit, :update, :destroy]

  resources :owner, only: [:index ]
   resources :owner_members, only: [:index ]
   resources :owner_reserve, only: [:index, :edit, :update]

  resources :owner, only: [:index, :new, :create ]
  resources :items
  namespace :admin do
    resources :items
  end

  resources :items do
    resources :orders, only: [:index, :create]
  end

  resources :reserves do
    
  end

end
