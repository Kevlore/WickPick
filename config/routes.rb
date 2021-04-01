Rails.application.routes.draw do
  # get 'candles/index'
  # get 'candles/show'
  get 'types/show'
  get 'types/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :candles, only: %i[index show]
  resources :types, only: %i[index show]
  get 'customers/index'
  get 'customers/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
