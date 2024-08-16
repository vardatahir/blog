Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users

  resources :blog_posts

  # Defines the root path route ("/")
  root "blog_posts#index"
end
