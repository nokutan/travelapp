Rails.application.routes.draw do

    #test
    devise_for :users

    #plan,tagの多対多の関係
    resources :tags
    resources :plans
    
    post '/plans'=>'plans#show'
    post '/add_tag'=>'plans#add_item'
    #post 'update_tag'=>'plans#update_tag'<-更新するなら...
    delete 'delete_item'=>'plans#delete_tag'

    get 'static_pages/home'
    get 'static_pages/home'
    get 'dynamic_pages/home'
    get 'tags/index'
    
    root 'dynamic_pages#home'

end
