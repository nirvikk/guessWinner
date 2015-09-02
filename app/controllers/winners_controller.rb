
class WinnersController < ApplicationController

	def index

		# render text: params[:number]

		@winners = Winner.all

		@current_winner = Winner.who_is_winner?(@winners)
		@win_number = Winner.by_vote_difference?(@winners)
	
	end

end

