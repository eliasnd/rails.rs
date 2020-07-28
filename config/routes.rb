Rails.application.routes.draw do
	resources :users, only: [:new, :create]
	resources :translations, only: [:index, :create]

	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	get 'welcome', to: 'sessions#welcome'
	get 'authorized', to: 'sessions#page_requires_login'
	get 'logout', to: 'sessions#logout'

	get 'translate', to: 'translations#index'

	root 'sessions#welcome'
end
