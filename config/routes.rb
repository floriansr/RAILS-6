Rails.application.routes.draw do
	devise_for :users
	get 'profile', to: 'users#profile'
	resources :users, only: [:show]
  	root "static_pages#index"
end
