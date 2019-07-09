Rails.application.routes.draw do
	
	root 'landings#index'
	get 'landings/index'
  get 'landings/about'
  get 'landings/contact'

	resources :blogs
	resources :products

 end

 ## REST - CRUD - VERBOS HTTP
