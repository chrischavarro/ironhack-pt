Rails.application.routes.draw do
  get '/' => 'products#index'
  # get '/products/create' => 'products#create'

  # resources :users, only: [:show, :create, :destroy] do
   resources :products, only: [:index, :show, :destroy, :create, :new] 
 # end

end
