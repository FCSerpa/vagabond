class TipsController < ApplicationController
	def index
		@tips = Tip.all
	end

	def new
	    @tip = Tip.new
	end

	def create
	end

	def show
	    @tip = Tip.find(params[:id])
	    @author_firstname = User.find(params[:id]).first_name
	    @author_lastname = User.find(params[:id]).last_name
	end

end
