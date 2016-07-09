class ConcertsController < ApplicationController

	def index
		@concerts = Concert.all
		@monthly_concerts = Concert.where(date: DateTime.now..DateTime.now.end_of_month)
	end

	def new
		@concert = Concert.new
	end

	def create
		@concert = Concert.new(
			artist: params[:concert][:artist],
			venue: params[:concert][:venue],
			city: params[:concert][:city],
			date: params[:concert][:date],
			price: params[:concert][:price],
			description: params[:concert][:description]
			)
		@concert.save

		redirect_to '/'
	end

	def show
		@concert = Concert.find_by(id: params[:id])
		@comments = @concert.comments
		@comment = Comment.new
	end

	def search
		@concert_filter = Concert.where("price <= ?", params[:price_search].to_i )
	end

	def popular
		@concerts = Concert.order(comment_count: :desc)
		@popular_concerts = @concerts[0..9]
	end

end
