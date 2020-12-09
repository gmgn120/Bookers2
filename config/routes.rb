Rails.application.routes.draw do
  devise_for :users
  get "home/about" => "homes#about"
  root to: 'homes#top'
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]
  resources :users, only: [:show, :edit, :update, :index]
end
