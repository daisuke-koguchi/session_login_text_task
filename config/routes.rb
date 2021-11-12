Rails.application.routes.draw do
  resources :blogs, only: [:index, :new, :create, :show, :edit, :update]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new,:create,:show]
end
