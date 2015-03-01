class Review < ActiveRecord::Base
	attr_accessible :date_watched, :rating, :review
	belongs_to :movie
end