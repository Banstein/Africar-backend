Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :users, only: [:create]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post "/login", to: "users#login"
      resources :cars, only: %i[index show new create destroy update]
      resources :reservations, only: %i[index show new create destroy update]
      root "cars#index"
    end
  end
end
