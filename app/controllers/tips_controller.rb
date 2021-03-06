class TipsController < ApplicationController
  	before_action :require_login, except: [:index, :show]

  	def index
    	@tips = Tip.all
  	end

  	def new
    	@tip = Tip.new
    	@places = Place.all
  	end

  	def create
	    @tip = Tip.new(tip_params)
	    @tip.user_id = current_user.id
	 
	    placeId = @tip.place_id
    	if @tip.save
      		redirect_to "/places/#{placeId}"
    	else
      		render :new
    	end
  	end

	def show
	    @tip = Tip.find(params[:id])
	    @author_firstname = @tip.user.first_name
	    @author_lastname = @tip.user.last_name
	end

	def edit
		@user = User.find_by({id: params[:id]})
		# @user = current_user
		@tip = Tip.find(params[:id])
	end

	def update
		#TODO: find tip from params & then assign attributes and save
		tip_id = params[:id]
		tip = Tip.find(params[:id])
		#update the tip
		tip.update_attributes(tip_params)
		#redirect to show
		redirect_to "/tips/#{tip_id}"

	end

	def destroy
		# @tip = Tip.find(params[:id])
		Tip.destroy(params[:id])
		redirect_to '/tips'
	end

  	private

  	def tip_params
    	params.require(:tip).permit(:name, :description, :user_id, :place_id)
  	end

  	def require_login
		if !current_user
			redirect_to sign_in_path
		end
	end
end

