Rails.application.routes.draw do
  # root get 'search' => 'search#show'
  root 'posts#index', as: 'home'
  # root 'posts#index'
  get 'posts' => 'posts#index'
  get 'about' => 'pages#about', as: 'about'

  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
