Rails.application.routes.draw do
	resources :users, only: [:new, :create] do
		resources :translations
	end

	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	get 'welcome', to: 'sessions#welcome'
	get 'authorized', to: 'sessions#page_requires_login'
	get 'logout', to: 'sessions#logout'

	root 'sessions#welcome'
end
