class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new 
		@user =User.new
	end
	def create
		@user = User.new(user_params)
	end
end


private 

def user_params
	params[:user].permit()
end
