require "sinatra"
require_relative('lib/Calculator.rb')

get "/" do
	erb(:home)
end

calculator = Calculator.new

post "/calculate" do
	@first = params[:first_number].to_f
	@second = params[:second_number].to_f
	operation = params[:operation]
		if operation == "addition"
			@result = calculator.add(@first,@second)
			@message = "#{@first} + #{@second} = #{@result}"
		elsif operation == "subtraction"
			@result = calculator.subtract(@first,@second)
			@message = "#{@first} - #{@second} = #{@result}"
		elsif operation == "multiplication"
			@result = calculator.multiply(@first,@second)
			@message = "#{@first} * #{@second} = #{@result}"
		elsif operation == "division"
			@result = calculator.divide(@first,@second)
			@message = "#{@first} / #{@second} = #{@result}"
		end
		erb(:calculate)
end

post "/calculate_using_result" do
	@result = params[:result]
	IO.write("public/results.txt", @result)
	@first_num = IO.read("public/results.txt")
	erb(:calculate_using_result)

end