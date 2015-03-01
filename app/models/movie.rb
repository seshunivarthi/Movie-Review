class Movie < ActiveRecord::Base
  attr_accessible :description, :release_date, :title
  has_many :reviews
end
