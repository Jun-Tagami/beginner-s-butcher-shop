Rails.application.routes.draw do

  # get 'item_orders/index'
  # get 'item_orders/create'
  # get 'item_orders/index'
  # get 'items_orders/index'
  # get 'items_orders/create'
  # get 'items_order/index'
  # get 'items_order/create'
  get 'home/index',to:'home#index'
  post 'orders/new'

  resources :orders

  # devise_for :users, controllers: {
  #   sessions: "users/sessions",
  #   registrations: "users/registrations"
  # }
  devise_for :users
  #  controllers: {
  #  sessions:      'users/sessions',
  #   passwords:     'users/passwords',
  #   registrations: 'users/registrations'
  # }
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
   resources :owner_reserve, only: [:index ]
  # namespace :items do
  #   resources :import_beef, :import_pork, :import_chicken, :other, :national_beef, :national_pork, :national_chicken
  # end
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
