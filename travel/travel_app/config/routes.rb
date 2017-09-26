Rails.application.routes.draw do
    root 'application#hello'
    #plan,tagの多対多の関係
    resources :tag
    resources :plan, only:[:show]
    post '/add_tag'=>'plans#add_item'
    post 'update_tag'=>'plans#update_tag'
    delete 'delete_item'=>'plans#update_tag'
end
