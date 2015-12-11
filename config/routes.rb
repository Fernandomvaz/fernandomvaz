Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  resources :posts do
    resources :comments
  end


  root "pages#index"

  get '/about', to: 'pages#about'
  get '/home', to: 'pages#index'
  get '/gallery', to: 'pages#gallery'

end
