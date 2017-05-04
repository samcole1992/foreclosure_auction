Rails.application.routes.draw do
  devise_for :users

  root "properties#index"

  namespace :api do
    namespace :v1 do
      resources :properties
    end
  end

  resources :users
  resources :properties
end
