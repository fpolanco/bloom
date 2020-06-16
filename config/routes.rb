Rails.application.routes.draw do
  get 'favorites/show'
  get 'favorites/edit'
  get 'favorites/update'
  get 'favorites/new'
  get 'products/index'
  get 'products/show'
  get 'users/index'
  get 'users/new'
  get 'users/create'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get 'welcome/index'

   # resources :favorites
   resources :reviews
  # resources :products
  # resources :users
  
  root 'welcome#index'
end
