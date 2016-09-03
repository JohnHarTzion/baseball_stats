class TeamController < ApplicationController

	def index
		@teams = Team.select(:year).distinct
		@teamnames = Team.select(:name).distinct

	end

end


