Rails.application.routes.draw do

  devise_for :users
  root "plants#index"

  get "/plants", to: "plants#index"

  get "/plants/about", to: "plants#about"

  get "/plants/collection", to: "plants#collection"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
