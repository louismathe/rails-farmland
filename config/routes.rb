Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  # farms => index show (index products // new order)     do/end  shallow true
  # orders => create
  # My::orders => index
  resources :farms, only: [:index, :show]
  resources :orders, only: [:new, :create]
end


# users
# farms
# products
# orders
