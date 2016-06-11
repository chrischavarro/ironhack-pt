require 'sinatra'
require "sinatra/reloader" if development?
require "pry"

enable(:sessions)

users = {
	josh: "swordfish", 
	faraz: "password",
	christian: "mudkip"
}

get "/log_in" do
	erb :login
end

post "/verify" do
	@user = params[:username].to_sym
	@pass = params[:password]
	# binding.pry
	if (users.has_key? @user) && (users[@user] == @pass)
		session[:saved_value] = @user
		redirect to("/users/#{@user}")
	else
		redirect to "/log_in"
	end
end

get "/users/:username" do
	@username = params[:username]

	erb :profile
end

post "/logout" do
	session.clear
	redirect "/log_in"
end

# get "/welcome" do

# 	erb :welcome

# end

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