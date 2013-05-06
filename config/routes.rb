Postit::Application.routes.draw do
  resources :characters


  resources :games


  resources :users


  root to: 'posts#index'
end
