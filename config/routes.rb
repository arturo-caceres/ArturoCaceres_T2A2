Rails.application.routes.draw do

  devise_for :users

  root "plants#index"

  get "/plants", to: "plants#index"

  get "/plants/about", to: "plants#about"

  get "/plants/collection", to: "plants#collection"

  # Route is for devise login redirection
  get "/plants/collection", to: "plants#collection", :as => :user_root

  get "/plants/sell", to: "plants#sell"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
