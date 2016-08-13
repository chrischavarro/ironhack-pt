class TournamentApiController < ApplicationController
	protect_from_forgery with: :null_session

	def index
		tournaments = Tournament.all
		render json: tournaments
	end

	def create 
		tournament = Tournament.create(name: params[:name])
		render json: tournament
	end

	def destroy
		tournament = Tournament.find_by(id: params[:id])
		unless tournament
			render json: {error: "Tournament not found"},
			status: 404
			return
		end
		tournament.destroy
		render json: tournament
	end

end
