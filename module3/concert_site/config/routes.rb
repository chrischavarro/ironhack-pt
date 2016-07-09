Rails.application.routes.draw do
	get '/' => 'concerts#index'
	get '/popular' => 'concerts#popular'
	post '/search' => 'concerts#search'

	resources :concerts, only: [:index, :show, :create, :new] do
	resources :comments, only: [:create, :new] end
end
