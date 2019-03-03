Rails.application.routes.draw do
  get 'about' => 'pages#about'
  
  

  resources :posts do
    resources :comments
  end
  
  root 'posts#index', as: 'home'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
