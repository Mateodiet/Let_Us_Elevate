Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :user_challenges, only: [:index, :show]
  patch "user_challenges/:id", to: "user_challenges#status", as: :change_status_user_challenge
end
