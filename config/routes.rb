Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :with_reviews ,only: [:index]
    collection do
      get 'search'
    end
  end
  resources :casts do
    collection do
      get 'search'
    end
  end
  resources :products do
    resources :product_likes, only: [:create, :destroy]
    resources :product_structures, only: [:new, :create]
    resources :reviews, only: [:new, :create] do
      resources :review_likes, only: [:create, :destroy]
      resources :review_comments, only: [:new, :create]
    end
    collection do
      get 'search'
    end
  end
  root 'products#index'
end
