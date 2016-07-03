class SiteController < ApplicationController

	def home
		@homes = Home.order(created_at: :desc)
	end
end
