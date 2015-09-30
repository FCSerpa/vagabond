class TipsController < ApplicationController
	def index
		@tips = Tip.all
	end

	def new
	    @tip = Tip.new
	end

	def show
		@user_id = User.find(params[:id]).id
	    @tip = Tip.find(params[:id])
	    @author_firstname = User.find(params[:id]).first_name
	    @author_lastname = User.find(params[:id]).last_name
	end
	def edit
		@user = User.find_by({id: params[:id]})
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

	private

	def tip_params
		#get updated data
		params.require(:tip).permit(:name, :description)
	end
end
