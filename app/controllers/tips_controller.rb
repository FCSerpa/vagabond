class TipsController < ApplicationController
	def index
		@tips = Tip.all
	end

	def new
	    @tip = Tip.new
	end

	def show
	    @tip = Tip.find(params[:id])
	    @author_firstname = User.find(params[:id]).first_name
	    @author_lastname = User.find(params[:id]).last_name
	end

	def destroy
		# @tip = Tip.find(params[:id])
		Tip.destroy(params[:id])
		redirect_to '/tips'
	end
end
