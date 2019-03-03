Rails.application.routes.draw do
  devise_for :users
  get 'about' => 'pages#about'
  
  

  resources :posts do
    resources :comments
  end
  
  root 'posts#index', as: 'home'
  root to: "home#index"

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
