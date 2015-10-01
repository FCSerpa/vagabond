class UsersController < ApplicationController
	before_action :require_login, except: [:show, :new, :create]

	def new
		@user = User.new
	end

	def create
		# binding.pry
		newPlace = Place.find_by(name: user_params[:place_id])
		newPlaceId = newPlace.id
    	newHash = user_params
    	newHash[:place_id] = newPlaceId
    	@user = User.create(newHash) 
    	if @user.save
    		# binding.pry
    		login(@user)
    		redirect_to "/users/#{@user.id}"
   	 	else 
    		redirect_to "/users/new"
    	end
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

	def require_login
		if !current_user
			redirect_to sign_in_path
		end
	end
end
