Rails.application.routes.draw do
  resources :blogs, only: [:index, :new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new,:create,:show]
end
