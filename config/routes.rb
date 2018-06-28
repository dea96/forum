Rails.application.routes.draw do
  devise_for :users
  root "forum_threads#index"
  resources :forum_threads, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :forum_posts, only: [:create]
    put :pinit, on: :member
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
