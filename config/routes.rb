Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  resources :sessions, only: [:create]
  # root to: "static#home"
  resources :users, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  # post "/login", to: "users#login"
  
  resources :cars, only: %i[index show new create destroy update]
  # resources :Reservations, only: %i[index new create destroy update]
  root "cars#index"
end
