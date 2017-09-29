Rails.application.routes.draw do
    
    #test
    devise_for :users
    get 'static_pages/home'
    
 

    #plan,tagの多対多の関係
    resources :tags
    resources :plans do
      member do
       post 'add_tag'
       post 'added_tag'
       #delete 'delete_tag'
      end
    end

    #resources :plan_tags

    # post 'plans/plans'=>'plans#show'
    get  '/plans/:id/add_tag' =>  'plans#add_tag'
    post  '/add_tag/:id' =>  'plans#add_tag'
    delete '/delete_tag/:id' => 'plans#delete_tag'
    
    
    root 'static_pages#home'

end
