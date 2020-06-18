Rails.application.routes.draw do
  # get 'favorites/show'
  # get 'favorites/edit'
  # get 'favorites/update'
  # get 'favorites/new'
  # get 'products/index'
  # get 'products/show'
  # get 'users/index'
  # get 'users/new'
  # get 'users/create'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/destroy'
  # get 'welcome/index'
  
   delete "/reviews/:id", to: "reviews#destroy", as: "delete_review"
   patch "/reviews/:id",  to: "reviews#update", as: "edit_review"
  resources :favorites, only: [:show, :edit, :update, :new] 
  resources :reviews
  resources :products
  resources :users

  resource :sessions, only: [:new, :create]

  #Show and Edit Profile
# get '/profile', to: 'users#profile', as: 'profile'
  
  root 'welcome#index'
end
