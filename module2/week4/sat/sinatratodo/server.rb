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