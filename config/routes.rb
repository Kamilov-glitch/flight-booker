Rails.application.routes.draw do
  resources :flights
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "flights#index"

end
