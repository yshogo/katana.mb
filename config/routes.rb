Rails.application.routes.draw do
  get 'users/show'

  root 'homes#top'
  get 'auth/:provider/callback', to:'sessions#create'
  get 'logout', to:'sessions#destroy'

  resources :users
end
