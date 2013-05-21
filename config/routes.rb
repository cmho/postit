Postit::Application.routes.draw do
  resources :posts, :except => :destroy do
  	resources :comments, :except => :destroy
  end

  resources :categories, :except => :show

  resources :users

  resources :sessions, :except => [:show, :update, :edit, :index]

  match '/login' => 'sessions#new'
  match '/logout' => 'sessions#destroy'
  match '/register' => 'user#new'

  root to: 'posts#index'
end
