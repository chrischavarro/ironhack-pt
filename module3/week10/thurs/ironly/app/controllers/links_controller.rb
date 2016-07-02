class LinksController < ApplicationController
	
	def index
		# input: shortlink in params
		# 1. Find a link with a specific shortlink
		link = Link.find_by(shortlink: params[:shortlink])
		if link
			redirect_to link.original_url 
		end
		# outcome: redirect to original url
	end

end
