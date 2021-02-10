Rails.application.routes.draw do

  devise_for :users
  root to: 'matches#top'

  resources :matches
   get "/top", to: "matches#top"

end
