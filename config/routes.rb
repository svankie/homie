Homie::Application.routes.draw do
  get "dashboard/index"
  get "dashboard/about"
  
	resources :dudes

	root 'dashboard#index'
end
