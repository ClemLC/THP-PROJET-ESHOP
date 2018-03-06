Rails.application.routes.draw do
  devise_for :users

  root 'products#index'

  get '/products/:id', to: 'products#show', as: 'product'

  get '/products/addtocart/:id', to: 'products#addtocart', as: 'addtocart'
  

end
