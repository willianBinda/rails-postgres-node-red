Rails.application.routes.draw do
  namespace :backoffice do
    get 'dashboard/index'
  end
  devise_for :admins
  devise_for :members
  resources :homes
  devise_for :users
  get 'home', to: 'homes#index'
  root 'homes#index'

  
  post '/auth', to: 'auth#verify_token'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
