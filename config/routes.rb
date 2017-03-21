Rails.application.routes.draw do
  get '/' => 'pages#index'

  post '/messages' => 'messages#create'

  resources :blogs
end
