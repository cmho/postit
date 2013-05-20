Postit::Application.routes.draw do
  resources :posts, :except => :destroy do
  	resources :comments, :except => :destroy
  end

  root to: 'posts#index'
end
