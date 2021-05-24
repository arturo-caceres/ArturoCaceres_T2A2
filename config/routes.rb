Rails.application.routes.draw do
  devise_for :users

  root "plants#home"

  #Route to the about page
  get "/about", to: "about#index"

  resources :plants

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
