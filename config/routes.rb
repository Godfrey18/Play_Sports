Rails.application.routes.draw do
  resources :matches
  resources :user_teams, only: [:create,:destroy]
  root 'homes#index'
 devise_for :users, :path_prefix => 'd'
resources :users, :only => [:show]
  resources :events
  resources :teams do
  resources :matches 
   end   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
