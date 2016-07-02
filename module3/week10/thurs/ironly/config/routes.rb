Rails.application.routes.draw do
    # root to: 'links#new'

    get '/' => 'links#new'

    resources :links, only: [:create, :show]

    # get '/links/:id' => 'links#show'
    # post '/links' => 'links#create'
    
    get '/:shortlink' => 'links#index'

end
