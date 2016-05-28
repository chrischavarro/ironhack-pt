require 'sinatra'
require 'sinatra/reloader'

require_relative('lib/sinatra_task.rb')
require_relative('lib/sinatra_list.rb')

todo_list = TodoList.new("Josh")
todo_list.load_tasks

get "/tasks" do
	@list = todo_list
	erb :task_index
end

get "/new_task" do

	erb :new_task
end

post "/create_task" do
	task = Task.new(params[:task])

	todo_list.add_task(task)
	todo_list.save

	redirect to "/tasks"
end

get "/complete_task/:id" do
	a = todo_list.find_task_by_id(params[:id].to_i)
	a.complete!
	todo_list.save

	redirect to "/tasks"
end

post "/delete_task" do 
	todo_list.delete_task(params[:deleteme].to_i)
	todo_list.save

	redirect to "/tasks"
end