class LinksController < ApplicationController
	
	def show
		# input: params[:id]
		@link = Link.find_by(id: params[:id])
	end

	def new
		@link = Link.new
	end

	def index
		# input: shortlink in params
		# 1. Find a link with a specific shortlink
		link = Link.find_by(shortlink: params[:shortlink])
		if link
			redirect_to link.original_url 
		end
		# outcome: redirect to original url
	end

	def create
		link = Link.create(
			original_url: params[:link][:original_url],
			shortlink: Link.generate_shortlink(3)
			)

		redirect_to "/links/#{link.id}"
	end

end
