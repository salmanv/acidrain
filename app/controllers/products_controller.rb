class ProductsController < ApplicationController
	def index
		@products = Product.all

		respond_to do |format|
			format.html
			format.json {render json: @products}
		end
	end

	def show
		@products = Product.find (params[:id])

		respond_to do |format|
			format.html
			format.json {render json: @products}
		end
	end

	def new
		@products = Product.new

		respond_to do |format|
			format.html
			format.json {render json: @products}
		end
	end

	def edit
		@products = Product.find (params[:id])
	end

	def create
		@products = Product.new(params[:product])
		respond_to do |format| 
		if @product.save
			format.html {redirect_to @product, notice: 'Product was successfully created!'}
			format.json {render json: @product, status: :created, location: @product}
		else
			format.html {render action: "new"}
			format.json {render json: @product.errors, status: :unprocessable_entity}
			end
		end
	end

	def update
		@products = product.find (params[:id])

		respond_to do |format|
			if @product.update_attributes(params[:product])
			format.html {redirect_to @product, notice: 'Product was successfully updated'}
			format.json {head :no_content}
		else
			format.html {render action: "edit"}
			format.json {render json: @product.errors, status: :unprocessable_entity}
			redirect_to product_path(@product) #ask about this step** why @product
			end
		end
	end

	def destroy
		@product = product.find (params[:id])
		@product.destroy
		
		respond_to do |format|
			format.html {redirect_to products_url}
			format.json {head :no_content}
		end
	end
end