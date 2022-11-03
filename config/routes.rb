Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'issues/:number/events', to: 'issues#events', as: :events
      resources :issues, only: [:index]
      post '/payload', to: 'issues#receive', as: :receive_payload
    end
  end
end
