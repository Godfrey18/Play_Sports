Rails.application.routes.draw do
  resources :user_teams, only: [:create,:destroy]
  root 'homes#index'
  devise_for :users
  resources :events
  resources :teams

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
