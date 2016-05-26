require "sinatra"

get "/" do
	erb(:home)
end

get "/add" do
	erb(:add)
end

get "/subtract" do
	erb(:subtract)
end

get "/multiply" do
	erb(:multiply)
end

get "/divide" do
	erb(:divide)
end

post "/calculate_add" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	result = first + second
	"#{first} + #{second} = #{result}"
end