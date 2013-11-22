class ItemsController < ApplicationController
	before_filter :authenticate_user, :only => [:new, :show]

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(post_params)

		if @item.save
			redirect_to @item
		else
			render 'new'
		end
	end
	
	def show
		@item = Item.find(params[:id])
	end

	def index
		@items = Item.all
	end

    private
	def post_params
		params.require(:post).permit(:title, :description, :price, :item_image)
	end
end
