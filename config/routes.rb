Rails.application.routes.draw do
  
  resources :artists, only: [:index, :show,:edit, :update, :new, :create]
  resources :genres, only: [:index, :show,:edit, :update, :new, :create]
  resources :songs, only: [:index, :show,:edit, :update, :new, :create]
end
