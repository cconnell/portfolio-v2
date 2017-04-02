Rails.application.routes.draw do
  devise_for :users
  
  root to: "pages#index"

  post '/messages' => 'messages#create'

  # resources :blog_posts
end
