Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'


  get 'static_pages/home'
  get  'static_pages/help'
  get  'static_pages/about'
  get  'static_pages/contact'
  get 'signup'=>'users/new'
   get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
    resources :users
end