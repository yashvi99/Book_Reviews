Rails.application.routes.draw do

  root 'books#index'
	resources :books do
		resources :notes , only: [:create, :destroy]
	end
	resources :session , only: [:new, :create, :destroy]

	get '/login' => 'session#new', as: 'login'
	delete '/logout' => 'session#destroy', as: 'logout'

end
