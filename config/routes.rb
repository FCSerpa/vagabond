Rails.application.routes.draw do

  	get "/sign_in", to: "sessions#new"
  	post "/sessions", to: "sessions#create"

	root 'welcome#index'
	get 'user/new'
<<<<<<< HEAD
#   Prefix Verb   URI Pattern               Controller#Action
#    signup GET    /signup(.:format)         users#new
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
  get '/users/new', to: 'users#new' 
  post '/users', to: 'users#create'
  get 'users/:id', to: 'users#show'
=======

  	get '/users/new', to: 'users#new' 
  	post '/users', to: 'users#create'
  	get 'users/:id', to: 'users#show'
>>>>>>> 7d6f8fa50906646fc9b53000598ea511c4de2bee

end
