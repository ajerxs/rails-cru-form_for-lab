Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists, only: [:new, :create, :show, :edit, :update]
  patch 'artists/:id', to: 'artists#update'
  resources :genres, only: [:new, :create, :show, :edit, :update]
  patch 'genres/:id', to: 'genres#update'
  resources :songs, only: [:index, :new, :create, :show, :edit, :update]
  patch 'songs/:id', to: 'songs#update'
end
