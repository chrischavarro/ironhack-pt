require 'sinatra'
require "sinatra/reloader" if development?
require "pry"

enable(:sessions)

users = {
	josh: "swordfish", 
	faraz: "password",
	christian: "mudkip"
}
# session[:current_user] = faraz/josh/your name
# Create another route to verify if the user's credentials are valid

get "/" do
	erb :login
end

post "/login" do
	@user = params[:username].to_sym
	@pass = params[:password]
	# binding.pry
	if (users.has_key? @user) && (users[@user] == @pass)
		session[:saved_value] = @user

		erb :welcome
	else
		redirect "/"
	end
end

post "/logout" do
	session.clear
	redirect "/"
end

# get "/welcome" do

# 	erb :welcome

# end

get "/users/:username" do
	@username = params[:username]

	erb :profile
end

get "/session_test/:text" do
	text = params[:text]
	session[:saved_value] = text
end

get "/session_show" do
	@my_text = session[:saved_value]

	erb :session_show
end


# get "/hi" do
# 	@greeting = "WELCOME TO WONDERLAND BITCH."
# 	erb :hi
# end

# get "/about" do
# 	erb :about
# end

# get "/time" do
# 	@time = Time.now
# 	erb :time
# end

# get "/pizza" do
# 	@ingredients = ["cheese", "pepperoni", "mushrooms"]

# 	erb :pizza
# end

# get "/hours/ago/:hoursago" do
# 	@hoursago = params[:hoursago]
# 	@time = Time.now
# 	@finaltime = @time - (@hoursago.to_i)*3600

# 	erb :hours
# end