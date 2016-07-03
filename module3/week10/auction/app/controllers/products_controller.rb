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
		@product = Product.find_by(params[:title])
		@title = @product.title
		@description = @product.description
		@deadline = @product.deadline

	end

end
