class PlacesController < ApplicationController
	def show
		@place = Place.find_by({id: params[:id]})
		@tip = Tip.where(place_id: params[:id])
<<<<<<< HEAD
		# @tip.each do |f|
		# end
=======
>>>>>>> 353adff189a60d46b7a2e1c4a2c6eea71084d257
	end
end
