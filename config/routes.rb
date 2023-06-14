Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  get "informations", to: "pages#informations"
  get "inscription", to: "pages#inscription"

  resources :user_challenges, only: [:index, :show]
  patch "user_challenges/:id", to: "user_challenges#status", as: :change_status_user_challenge
  resources :user_designs

  get "design", to: "designs#form", as: :form_design
  post "design", to: "designs#scrap"

  get "try_design", to: "new_designs#form_without_design"
  post "try_design_post", to: "new_designs#new_design", as: :try_design_post
  get "design/:id", to: "designs#show", as: :design_show

end
