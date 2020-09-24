Rails.application.routes.draw do
  resources :events
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'events#index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
end
