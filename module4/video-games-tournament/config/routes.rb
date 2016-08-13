Rails.application.routes.draw do
  get '/' => 'tournaments#index' 
  scope "api" do
    resources :tournaments, controller: "tournament_api" 
  end

end
