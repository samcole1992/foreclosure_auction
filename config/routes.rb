Rails.application.routes.draw do
  devise_for :users

  root "properties#index"

  namespace :api do
    namespace :v1 do
      resources :properties
    end
  end

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  resources :users
  resources :properties
  resources :searches
  get '/about' => 'pages#about'
  get '/legal' => 'pages#legal'
  get '/contact' => 'pages#contact'

end
