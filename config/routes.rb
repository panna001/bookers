Rails.application.routes.draw do
  resources :books, only:[:index, :show, :create, :edit, :update, :destroy]
  resources :users, only:[:index, :show, :edit, :update, :destroy]
  root 'homes#top'
  get 'homes/about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
