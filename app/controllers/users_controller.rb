class UsersController < ApplicationController

	def new
		@user = User.new
	end
	def create
		newPlace = Place.find_by(name: user_params[:place_id])
		newPlaceId = newPlace.id
    	newHash = user_params
    	newHash[:place_id] = newPlaceId
    	binding.pry
    	@user = User.create(newHash) 		
    	login(@user)
    	redirect_to user_path(@user)
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
		params.require(:user).permit(:first_name, :last_name, :email, :password, :place_id)
	end
end
