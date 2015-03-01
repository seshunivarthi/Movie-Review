class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def create
		@movie = Movie.create(params["movie"])
		redirect_to movies_path
	end

end
