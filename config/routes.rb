Rails.application.routes.draw do

  root 'static#home'

  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :attractions, only: [:index, :show, :new, :create, :edit, :update]
  resources :rides, only: [:new, :create]
  # resources :sessions
  get 'signin' => 'sessions#new'
  post 'signin' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

end
