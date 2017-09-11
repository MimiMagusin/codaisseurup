Rails.application.routes.draw do

  get 'pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: "pages#home"
  devise_for :users

  resources :users, only: [:show]
  resources :events, except: [:destroy] do
    resources :registrations, only: [:create]
  end
  resources :categories
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :photos

  get "about" => "pages#about"

  namespace :api do
    resources :events
  end

  namespace :api do
    resources :categories
  end

end
