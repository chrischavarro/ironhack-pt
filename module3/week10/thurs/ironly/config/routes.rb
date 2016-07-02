Rails.application.routes.draw do
    get '/:shortlink' => 'links#index'
    
    get '/' => 'links#home'
    post '/create' => 'links#create'
    get '/show' => 'links#show'
end
