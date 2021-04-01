Rails.application.routes.draw do
  get 'types/show'
  get 'types/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'customers/index'
  get 'customers/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
