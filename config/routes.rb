Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  # farms => index show (index products // new order)     do/end  shallow true
  # orders => create
  # My::orders => index
resources :farms, only: [:index, :show]
end


# users
# farms
# products
# orders
