Rails.application.routes.draw do
  get 'static_pages/home'

    get 'tags/index'
    root 'static_pages#home'
end
