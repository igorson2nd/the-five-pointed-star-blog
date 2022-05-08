Rails.application.routes.draw do
  root 'posts#index'
  resources :reactions
  resources :comments
  resources :posts
  
  get '/log_reg_form', to: 'user#log_reg_form'
  post '/log_reg', to: 'user#log_reg'
  get '/logout', to: 'user#logout'

  get "/delete_my_reactions/:comment_id", to: 'reactions#delete_my_reactions'
end
