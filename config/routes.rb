Rails.application.routes.draw do
  get 'users/show'
  get 'auth/:provider/callback', to:'sessions#create'
  get 'logout', to:'sessions#destroy'
  get '/edit', to:'users#edit'
  post '/articles/edit'
  resources :users
  resource :articles

  root 'homes#top'
end
