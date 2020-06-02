Rails.application.routes.draw do
	devise_for :users
	get 'profile', to: 'users#profile'
  	root "static_pages#index"
end
