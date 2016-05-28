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
	task_name = params[:task]
	
	task = Task.new(task_name)
	todo_list.add_task(task)
	todo_list.save
	redirect to "/tasks"
end