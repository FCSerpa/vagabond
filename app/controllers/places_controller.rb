class PlacesController < ApplicationController
	def show
		@place = Place.find_by({id: params[:id]})
		@tip = Tip.where(place_id: params[:id])
		@tip.each do |f|
		end
	end
end
