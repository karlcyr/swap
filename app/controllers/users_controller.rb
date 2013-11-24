class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user].permit(:email, :nickname, :firstname, :lastname, :password, :password_confirmation))
		if @user.save
			redirect_to	root_url, :notice => "Welcome to Swap City!"
		else
			render "new"
		end
	end
end
