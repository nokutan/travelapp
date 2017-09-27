Rails.application.routes.draw do
    
    root 'application#hello'
    #test
    #plan,tagの多対多の関係
    resources :tags
    resources :plans, only:[:show]
    post '/add_tag'=>'plans#add_item'
    #post 'update_tag'=>'plans#update_tag'<-更新するなら...
    delete 'delete_item'=>'plans#delete_tag'
end
