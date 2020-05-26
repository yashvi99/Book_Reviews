Rails.application.routes.draw do

  root 'books#index'
	resources :books do
		resources :notes , only: [:create, :destroy]
	end
	resources :session , only: [:new, :create, :destroy]
	resources :reviewers

	get '/login' => 'session#new', as: 'login'
	get '/signup' => 'reviewers#new', as: 'signup'
	delete '/logout' => 'session#destroy', as: 'logout'
	get '/library' => 'books#all', as: 'library'

end
