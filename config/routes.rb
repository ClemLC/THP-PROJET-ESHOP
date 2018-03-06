Rails.application.routes.draw do
resources :charges, only: [:new, :create]

  get 'carts/show'

  devise_for :users

  root 'products#index'

  get '/products/:id', to: 'products#show', as: 'product'

  get '/products/addtocart/:id', to: 'carts#addtocart', as: 'addtocart'

  get '/showcart', to: 'carts#show', as: 'showcart'

end
