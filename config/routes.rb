Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :blog_posts


  # Defines the root path route ("/")
  root "blog_posts#index"
end
