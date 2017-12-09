Rails.application.routes.draw do
  resources :charges
  get 'charges/new'

  get 'charges/create'

  get 'thanks', to: 'charges#thanks', as: 'thanks'

  root to: "products#index"

  get '/sign_up' => 'users#new'
  post '/users' => 'users#create'

  get '/sign_in' => 'sessions#new'
  post '/sign_in' => 'sessions#create'
  get 'sign_out' => 'sessions#destroy'

  resources :products
  resources :order_items
  resource :cart
  resource :orders
  resource :cart, only: [:show]

  get 'finalize' => 'carts#finalize'

end
