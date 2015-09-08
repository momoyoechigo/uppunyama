Rails.application.routes.draw do
  
  root 'uppunyama#index'
  get 'update' => 'users#index'
  
  resources :uppunyama , only: [:edit]

end
