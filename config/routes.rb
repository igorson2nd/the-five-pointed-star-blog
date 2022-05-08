Rails.application.routes.draw do
  resources :users
  root 'posts#index'
  resources :reactions
  resources :comments
  resources :posts
  
  get '/log_reg_form', to: 'users#log_reg_form'
  post '/log_reg', to: 'users#log_reg'
  get '/logout', to: 'users#logout'

  get "/delete_my_reactions/:comment_id", to: 'reactions#delete_my_reactions'
end
