require "sinatra"
require_relative('lib/Calculator.rb')
require_relative('lib/squatcalc.rb')
require "sinatra/reloader" if development?

get "/" do
	erb(:home)
end


post "/calculate" do
	@calc = Calculator.new
	@squatcalc = SquatCalculator.new
	@squat = params[:squat].to_f
	@bench = params[:bench].to_f
	@deadlift = params[:deadlift].to_f
	@overhead = params[:overhead].to_f
	# @result = calculator.multiply(@first,@second)
	# @message = "#{@first} * #{@second} = #{@result}"
		
		erb(:calculate)
end

post "/calculate_using_result" do
	@result = params[:result]
	IO.write("public/results.txt", @result)
	@first_num = IO.read("public/results.txt")
	erb(:calculate_using_result)

end