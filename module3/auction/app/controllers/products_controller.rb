class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(
			title: params[:product][:title],
			description: params[:product][:description],
			deadline: params[:product][:deadline]
			)
		@product.save

		redirect_to '/products'
	end

	def destroy
	end

	def show
		@product = Product.find_by(id: params[:id])
		@bids = @product.bids.order(amount: :desc)
		@high_bid = @bids.first
		@bid = Bid.new

	end

end

# Lessons learned: 
# For product.find_by, have to put id and THEN the params