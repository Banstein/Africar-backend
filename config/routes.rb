Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resource :users, only: [:create]
      post "/login", to: "users#login"
      resources :cars, only: %i[index show new create destroy update]
      resources :reservations, only: %i[index show new create destroy update]
      root "cars#index"
    end
  end
end
