Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  get "/challenges", to: "user_challenges#index"
  get "/challenges/:id", to: "user_challenges#show", as: "challenge"

  get "/information_1", to: "information_2"
  get "/information_2", to: "information_3"
end
