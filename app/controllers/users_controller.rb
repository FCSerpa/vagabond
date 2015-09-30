class UsersController < ApplicationController
	def new
		@user = User.new
	end
	def create
    	@user = User.create(user_params)
    	login(@user)
    	redirect_to "/users/#{@user.id}"
	end

	def show
		@user = User.find_by({id: params[:id]})
		@tip = Tip.where(user_id: params[:id])
	end

	def edit
		@user = User.find_by({id: params[:id]})
		@places = Place.all
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
		redirect_to user_path
	end


	private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password)
	end
end
