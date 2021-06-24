Rails.application.routes.draw do
  devise_for :users
  resources :users, only:[:index, :show, :edit, :update, :destroy]
  resources :books, only:[:index, :show, :create, :edit, :update, :destroy]
  root 'homes#top'
  get 'home/about' => "homes#about", as: "homes_about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
