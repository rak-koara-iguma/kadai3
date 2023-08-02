Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'home/about' => 'homes#about',as:'about'
  post 'users' => 'users#create'
  get 'users' => 'users#index'
  resources :users, only: [:show, :edit, :index, :create, :new, :update]
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
end
