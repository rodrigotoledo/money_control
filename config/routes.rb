Rails.application.routes.draw do
  resources :account_moviments
  resources :accounts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "accounts#index"
end
