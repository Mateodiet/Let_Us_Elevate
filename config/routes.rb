Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  get "informations", to: "pages#informations"

  resources :user_challenges, only: [:index, :show]
  patch "user_challenges/:id", to: "user_challenges#status", as: :change_status_user_challenge
  resources :user_designs

  get "design", to: "designs#form", as: :form_design
  post "design", to: "designs#scrap"
end
