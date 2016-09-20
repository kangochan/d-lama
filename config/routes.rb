Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :products do
    resources :product_likes, only: [:create, :destroy]
    resources :product_structures, only: [:new, :create]
    resources :reviews, only: [:new, :create] do
      resources :review_likes, only: [:create, :destroy]
      resources :review_comments, only: [:new, :create]
    end
  end
  root 'products#index'
end
