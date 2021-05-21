Rails.application.routes.draw do

  root "plants#index"

  get "/plants", to: "plants#index"

  get "/plants/:id", to: "plants#show"

  resources :plants

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
