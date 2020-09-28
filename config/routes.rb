Rails.application.routes.draw do
  get 'attendances/create'
  get 'attendances/new'
  get 'attendances/destroy'
  resources :sessions, only: [:new, :create, :destroy]
  resources :attendances, only: [:create, :destroy]
  resources :events
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'events#index'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  post 'signup', to: 'users#create'
  # post 'attendance', to: 'attendances#create'
end
