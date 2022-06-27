# frozen_string_literal: true

Rails.application.routes.draw do

  #resources :profiles
  #resources :orders
  #resources :customers
  #resources :books, :users ,:items

  resources :people
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :publishers,only: [:show, :index,:new, :create, :edit, :update, :destroy]
  resources :magzines,only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :authors,only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :books,only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :chargers,only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :companies,only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :appointments,only: [:show, :index, :new, :create, :edit, :update, :destroy]
  #get 'customers/:id', to: 'customers#show'
  #get '/customers/:id', to: 'customers#show', as: 'customer'
  resources :googleforms
  resource :products

  get 'profile', to: 'users#new'
  get 'profile', to: 'users#edit'
  get 'profile', to: 'users#show'
  put 'profile', to: 'users#update'
  patch 'profile', to: 'users#update'
  delete 'profile', to: 'users#destroy'
  post 'profile', to: 'users#create'

  namespace :admin do
    resources :customers, :orders
  end
=begin
  scope module: 'admin' do
    resources :users, :profiles
  end

  resources :users, module: 'admin
=end
  resources :students do
    resources :teachers
  end

  resources :doctors do
    resources :patients do
      resources :appointments
    end
  end

  resources :authors do
    get 'book', on: :member
  end

=begin
  resources :authors do
    member do
      get 'book'
      put 'book'
    end
  end
=end
  resources :companies do
    get 'employee', on: :collection
  end

end
