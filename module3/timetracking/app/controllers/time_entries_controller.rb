class TimeEntriesController < ApplicationController
	
	def create
		# input: params[:project_id] and params[:time_entry]
		# find resources needed
		@project = Project.find params[:project_id]
		time_entry_params = params.require(:time_entry).permit(
			:hours, :minutes, :date
		)
		# time_entry_params == { hours: 1, minutes: 3, date: somedate }
		@time_entry = @project.time_entries.new(time_entry_params)
		if @time_entry.save
			# redirect_to action: 'index', controller: 'time_entries', project_id: @project.id
			redirect_to project_time_entries_path(@project)
		else
			render 'new'
		end
	end

	def index
		@project = Project.find(params[:project_id])
		@time_entries = @project.time_entries
	end

	def new
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.new
	end

	def edit
		@project = Project.find params[:project_id]
		@time_entry = @project.time_entries.find params[:id]
	end

	def update
		@project = Project.find params[:project_id]
		@time_entry = @project.time_entries.find(params[:id])
		time_entry_params = params.require(:time_entry).permit(
			:hours, :minutes, :date, :comment
			)

		
		if @time_entry.update(time_entry_params)
			redirect_to project_time_entries_path(@project)
		else
			render 'edit'
		end
	end
end
