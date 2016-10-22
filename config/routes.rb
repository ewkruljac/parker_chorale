Rails.application.routes.draw do

  get '/home',         to: 'static_pages#home'
  get '/about_us',     to: 'static_pages#about'
  get '/hear_us_sing', to: 'static_pages#hear_us_sing'
  get '/support',      to: 'static_pages#support'
  get '/contact',      to: 'static_pages#contact'


  get '/admin',        to: 'audio_files#new'
  post '/admin',       to: 'audio_files#create'
  get '/practice',     to: 'audio_files#index'

  root 'static_pages#home'

end
