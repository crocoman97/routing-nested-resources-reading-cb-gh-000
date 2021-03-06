Rails.application.routes.draw do

  resources :authors, only: [:show] do
    resources :posts, only: [:index, :show]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update] do
    resources :comments
  end

  root 'posts#index'
end
