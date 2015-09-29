class TipsController < ApplicationController
  def index
  	@tips = Tip.all
  end

  def new
  end

  def show
  end
end
