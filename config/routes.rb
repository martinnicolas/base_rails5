Rails.application.routes.draw do
  resources :roles
  resources :users
  devise_for :users, :path => 'user'
  get 'index/index'

  # You can have the root of your site routed with "root"
  root 'index#index'

  get 'index' => 'index#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
