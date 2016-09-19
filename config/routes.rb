Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :products do
    resources :reviews, only: [:new, :create]
    resources :product_likes, only: [:create, :destroy]
    resources :product_structures, only: [:new, :create]
  end
  resources :reviews do
    resources :review_comments, only: [:new, :create]
  end
  root 'products#index'
end
