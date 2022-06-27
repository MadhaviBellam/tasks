Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :publishers,only: [:show, :index,:new, :create, :edit, :update, :destroy]
  resources :magzines,only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :authors,only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :books,only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :chargers,only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :companies,only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :appointments,only: [:show, :index, :new, :create, :edit, :update, :destroy]
end
