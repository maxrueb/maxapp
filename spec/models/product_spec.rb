require 'rails_helper'

describe Product do
	before do
  		@product = Product.create!(name: "race bike")
  	 	@user = User.create!(name: "Mike", email: "mike@mike.com", password: "12345")
  		@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
		@product.comments.create!(rating: 3, user: @user, body: "It´s okay")
		@product.comments.create!(rating: 5, user: @user, body: "Perfect!")
	
		it "returns the average rating of all comments" do
			expect(average.rating).to eq product.average_rating
		end 
	end
end