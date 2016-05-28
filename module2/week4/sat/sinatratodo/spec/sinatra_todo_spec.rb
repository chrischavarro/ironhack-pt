require_relative "../lib/sinatra_task"
require_relative "../lib/sinatra_list"
require "spec_helper"

describe "Sinatra Todo" do

	before :each do
		@list = TodoList.new("Gaggathor")
		@task1 = Task.new("Walk the dog")
		@task2 = Task.new("Spit on the gopher")
		@task3 = Task.new("Pet the hamster")
		@task2.complete!
		@task3.complete!
		@task3.make_incomplete!
		@task2.update_content!("Milk the fish")

		@list.save
		@list.add_task(@task1)
		@list.add_task(@task2)
	end

describe "Task" do
	it "should be able to show the increment in task id" do
		expect(@task2.id).to eq(2) 
	end

	it "should be able to show the completion status of the task" do
		expect(@task1.complete?).to eq(false)
	end

	it "should be able to mark a task as complete" do
		expect(@task2.complete?).to eq(true)
	end

	it "should be able to mark a task as incomplete" do
		expect(@task3.complete?).to eq(false)
	end

	it "should update the content within the task" do
		expect(@task2.content).to eq("Milk the fish")
	end
end

describe "ToDo" do
	it "should be able to add a task to the list and display it" do
		expect((@list.tasks[0]).content).to eq("Walk the dog")
	end

	it "should be able to check if a task was deleted" do
		@list.delete_task(1)
		expect((@list.tasks).length).to eq(2)
	end 

	it "should be able to find a task by its unique id" do
		gertrude = @list.find_task_by_id(@task2.id)
		expect(gertrude.content).to eq("Milk the fish")
	end

	it "should be able to return nil when an id is not found" do
		gertrude = @list.find_task_by_id(100)
		expect(gertrude).to eq(nil)
	end

	it "should sort the tasks by their created time" do 
		expect(@list.sort_by_created("ASC")).to eq([@task1, @task2])
	end

	it "should tell us what user the task list belongs to" do
		expect(@list.user).to eq("Gaggathor")
	end

	it "Loads our to do list that we saved" do
		@list.save
		save2 = TodoList.new("Gaggathor")

		save2.load_tasks

		expect(save2.tasks.length).to eq(@list.tasks.length)
end

end
end