Rails.application.routes.draw do

  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/hear_us_sing'
  get 'static_pages/support'
  get 'static_pages/contact'
  root 'static_pages#home'

end
