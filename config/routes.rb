Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/posts' => 'posts#index'
  # get '/posts/new' => 'posts#new'
  # post 'posts' => 'posts#create'
  resources :posts do
    resources :comments, only: [:create]
  end

  root 'posts#index'
  

end
