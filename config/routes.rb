Rails.application.routes.draw do
  devise_for :customers
  # get 'candles/index'
  # get 'candles/show'
  get 'types/show'
  get 'types/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :candles, only: %i[index show]
  resources :types, only: %i[index show]
  resources :cart, only: %i[create destroy]
  resources :orders, only: %i[index show new create]
  get 'customers/index'
  get 'customers/show'

  scope "/checkout" do
    post "create", to: "checkout#create", as: "checkout_create"
    post "success", to: "checkout#success", as: "checkout_success"
    post "cancel", to: "checkout#cancel", as: "checkout_cancel"
  end

  root to: "candles#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
