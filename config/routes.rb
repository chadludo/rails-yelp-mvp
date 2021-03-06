Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "restaurants", to: "restaurants#index"
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # get "new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create"
  resources :restaurants, only: [:index, :show, :create, :new] do
    resources :reviews, only: [:new, :create]
  end
end
