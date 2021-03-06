Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'

  resources :farms, only: [:index, :show]
  resources :orders, only: [:create, :index, :update, :destroy]
end
