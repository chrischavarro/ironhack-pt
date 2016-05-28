require 'yaml/store'
require_relative "store_list.rb"

class TodoList
	attr_reader :tasks, :user
	include StoreList

	def initialize(user)
		@todo_store = YAML::Store.new("./public/tasks.yml")
		@tasks = []
		@user = user
	end

	def add_task(task)
		@tasks.push(task)
	end

	def delete_task(task_id)
		@tasks.delete_if do | task | 
			task.id == task_id
		end
	end

	def find_task_by_id(task_id)
		@tasks.find do | task |
			task.id == task_id
		end
	end

	def sort_by_created(direction)
		sorted_tasks = @tasks.sort do | task1, task2 |
			if direction == "ASC"
			task1.created_at <=> task2.created_at
			elsif direction == "DESC"
			task2.created_at <=> task1.created_at
			end	
		end
		sorted_tasks
	end
end