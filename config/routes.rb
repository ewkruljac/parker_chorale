Rails.application.routes.draw do

  get '/home',                to: 'static_pages#home'
  get '/about_us',            to: 'static_pages#about'

  get '/support',             to: 'static_pages#support'
  get '/contact',             to: 'static_pages#contact'


  get '/admin',               to: 'audio_files#new'
  post '/admin',              to: 'audio_files#create'
  get '/practice',            to: 'audio_files#index'

  get '/events',              to: 'performances#new'
  post '/events',             to: 'performances#create'
  get '/hear_us_sing',        to: 'performances#index'

  get '/generous_supporters', to: 'supporters#index'
  get '/add_supporters',      to: 'supporters#new'
  post '/add_supporters',     to: 'supporters#create'

  get '/signup',              to: 'users#new'
  post '/signup',             to: 'users#create'
  resources :users

  
  root 'static_pages#home'

end
