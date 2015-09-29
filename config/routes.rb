Rails.application.routes.draw do

  get 'tips/new'

  get 'tips/show'

  	get "/sign_in", to: "sessions#new"
  	post "/sessions", to: "sessions#create"

	root 'welcome#index'
	get 'user/new'

  	get '/users/new', to: 'users#new' 
  	post '/users', to: 'users#create'
  	get 'users/:id', to: 'users#show'

  	get '/tips/:id', to: 'tips#show'

end
