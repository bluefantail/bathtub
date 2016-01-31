Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	
	root 'pages#index'  
	get '/contact' => 'pages#contact'
	get '/bath' => 'pages#bath'

	get '/lab' => 'lab#index'

	resource :jobs
  
  # Serve websocket cable requests in-process
  	mount ActionCable.server => '/cable'
end
