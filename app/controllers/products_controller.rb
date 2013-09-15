class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		@products = Product.find (params[:id])
	end

	def new
		@products = Product.new
	end

	def edit
		@products = Product.find (params[:id])
	end

	def create
		@products = Product.new(params[:product])
		if @product.save
			redirect_to product_url
		else
			render :new
		end
	end

	def update
		@products = product.find (params[:id])
		if @product.update_attributes(params[:product])
			redirect_to product_path(@product) #ask about this step** why @product
		else
			render :edit
		end
	end

	def destroy
		@product = product.find (params[:id])
		@product.destroy
		redirect_to product_path
	end
end