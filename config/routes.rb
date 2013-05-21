Postit::Application.routes.draw do
  resources :posts, :except => :destroy do
  	resources :comments, :except => :destroy
  end
  resources :categories, :except => :show
  root to: 'posts#index'
end
