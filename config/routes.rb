Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  namespace :api do
    namespace :v1 do
      resources :cars
      resources :users do
        resources :reservations
      end
      
      post "/login", to: "users#login"
      get "/login", to: "users#token_authenticate"
    end
  end
end
