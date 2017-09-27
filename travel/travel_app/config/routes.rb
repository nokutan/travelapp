Rails.application.routes.draw do
    get 'tags/index'
    root 'application#hello'
end
