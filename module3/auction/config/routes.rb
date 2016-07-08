Rails.application.routes.draw do
  post '/products/:product_id/bids' => 'bids#create', as: :product_bids

  get '/' => 'products#index'
  # get '/products/create' => 'products#create'

  # resources :users, only: [:show, :create, :destroy] do
   resources :products, only: [:index, :show, :destroy, :create, :new] 

 # end

end
