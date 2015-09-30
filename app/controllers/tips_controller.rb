class TipsController < ApplicationController
	def index
		@tips = Tip.all
	end

	def new
	    @tip = Tip.new
	end

	def create
		@tip = Tip.create(tip_params)
		redirect_to "/tips/#{@tip.id}"
	end

	def show
	    @tip = Tip.find(params[:id])
	    @author_firstname = User.find(params[:user_id]).first_name
	    @author_lastname = User.find(params[:user_id]).last_name
	end

	private
	def tip_params
		params.require(:tip).permit(:name, :description)
	end
end
