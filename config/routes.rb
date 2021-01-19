Rails.application.routes.draw do
  devise_for :users
  root "users#show"
  resources :lists, only: [:create, :show, :destroy, :index]
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
