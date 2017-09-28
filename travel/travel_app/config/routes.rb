Rails.application.routes.draw do
  resources :tags
  
  get 'static_pages/home'
  get 'dynamic_pages/home'

  get 'tags/index'
  root 'static_pages#home'
end
