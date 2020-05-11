Rails.application.routes.draw do
  root 'home#index'

  match "home/login" => "home#login", via: [:get, :post]
  match "home/index" => "home#index", via: [:get, :post]
  match "home/fun"   => "home#fun",   via: [:get]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
