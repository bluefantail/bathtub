Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
	
	root 'pages#index'  
	get '/contact' => 'pages#contact'
	get '/bath' => 'pages#bath'

	get '/lab' => 'lab#index'
	get '/lab/tasks' => 'lab#tasks'
	get '/lab/settings' => 'lab#settings'

	resource :jobs
  
  # Serve websocket cable requests in-process
  	mount ActionCable.server => '/cable'
end