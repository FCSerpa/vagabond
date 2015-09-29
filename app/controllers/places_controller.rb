class PlacesController < ApplicationController
	def show
		@place = Place.find_by({id: params[:id]})
		@tip = Tip.where(places_id: params[1])
	end
end
