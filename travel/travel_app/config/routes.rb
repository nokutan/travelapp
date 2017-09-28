Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/home'

    get 'tags/index'
    root 'static_pages#home'
end
