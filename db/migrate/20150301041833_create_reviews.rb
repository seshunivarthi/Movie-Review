class CreateReviews < ActiveRecord::Migration
  def change
  	create_table :reviews do |t|
  		t.date :date_watched 
  		t.integer :rating, nul: false
  		t.text :review

  		t.belongs_to :movie

  		t.timestamps
  	end
  end
end