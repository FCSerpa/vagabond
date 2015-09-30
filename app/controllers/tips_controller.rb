class TipsController < ApplicationController
  def index
    @tips = Tip.all
  end

  def new
    @tip = Tip.new
  end

  def create
    @tip = Tip.new(tip_params)
    @tip.user_id = current_user.id
    if @tip.save
      redirect_to "/tips/#{@tip.id}"
    else
      render :new
    end
  end

  def show
    @tip = Tip.find(params[:id])
    @author_firstname = @tip.user.first_name
    @author_lastname = @tip.user.last_name
  end

  private
  def tip_params
    params.require(:tip).permit(:name, :description, :user_id)
  end
end