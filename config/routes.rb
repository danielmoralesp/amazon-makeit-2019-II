Rails.application.routes.draw do
	
	root 'landing#index'
	get 'landings/index'
  get 'landings/about'
  get 'landings/contact'

	resources :blogs

 end
