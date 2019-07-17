Rails.application.routes.draw do
  resources :posts
  resources :authors, only: [:show, :index] do
    resources :posts, only: [:index, :show, :new, :edit]
  end
end
