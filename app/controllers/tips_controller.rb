class TipsController < ApplicationController
	def new
        @tip = Tip.new
    end
  
    def show
        @tip = Tip.find(params[:id])
        @users_id = params[:id]

    end


end
