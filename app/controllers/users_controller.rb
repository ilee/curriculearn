class UserController < ApplicationController

	# I don't think we need this line, since devise model takes care of user auth...
	# before_filter :authenticate_user!, only: [:create, :destroy]

	def index
		respond_with User.all
	end

	def show
		puts User.find(params[:id])
		respond_with User.find(params[:id])
	end

end
