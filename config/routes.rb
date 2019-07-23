Rails.application.routes.draw do
  root 'root#top'
  root 'users#show'
  get '/home/about' => 'abouts#about'
  devise_for :users
  resources :users, only: [:show, :index, :edit, :update]
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
