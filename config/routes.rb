Rails.application.routes.draw do

  root to: 'matches#top'
  resources :matches

end
