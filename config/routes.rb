Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/challenges", to: "user_challenges#index"
  get "/challenges/:id", to: "user_challenges#show", as: "challenge"
end
