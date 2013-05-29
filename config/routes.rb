Postit::Application.routes.draw do
  resources :posts, :except => :destroy do
  	resources :comments, :except => :destroy
  end

  resources :categories

  resources :users

  resources :sessions

  match '/login' => 'sessions#new'
  match '/logout' => 'sessions#destroy'
  match '/register' => 'users#new'
  match '/posts/:id/up' => 'posts#upvote'
  match '/posts/:id/down' => 'posts#downvote'

  root to: 'posts#index'
end
