class ReviewsController < ApplicationController
	def index
		@movie = Movie.find(params[:movie_id])
	end 
	
	def new
		@movie = Movie.find(params[:movie_id])
	end 

	def create
		@movie = Movie.find(params[:movie_id])
		@review = Review.new(params[:review])

		@review.movie = @movie
		@review.save

		redirect_to movie_reviews_path(@movie)
	end 

end