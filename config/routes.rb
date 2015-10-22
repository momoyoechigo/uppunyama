Rails.application.routes.draw do
  get 'users/new'

  root 'uppunyama#index'
  get 'update' => 'uppunyama#index'
  post 'signup' , to: 'users#new'
  #post 'update' => 'users#index'
  get 'about' => 'uppunyama#about', as: "about"
  
  
  resources :users do
    member do
    post 'create'
    end
  end
  resources :uppunyama, only: [:new, :create]

end