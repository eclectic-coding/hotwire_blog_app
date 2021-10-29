Rails.application.routes.draw do
  root to: 'static#home'
  get 'static/home'

  devise_for :users

  resources :users, only: :show, param: :slug, path: "/user"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
