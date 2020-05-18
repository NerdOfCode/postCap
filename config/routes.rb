Rails.application.routes.draw do
  resources :posts

  root 'home#index'

  match "home/login" => "home#login", via: [:get, :post]
  match "home/index" => "home#index", via: [:get, :post]
  match "home/post"  => "home#post",  via: [:get]
  match "home/fun"   => "home#fun",   via: [:get]


  namespace :api do
    namespace :v1 do
      resources :get_user_info
      resources :logout
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
