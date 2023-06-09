Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "informations", to: "pages#informations"
  # root "articles#index"
  resources :user_challenges, only: [:index, :show]
  patch "user_challenges/:id", to: "user_challenges#status", as: :change_status_user_challenge
  resources :user_designs
end
