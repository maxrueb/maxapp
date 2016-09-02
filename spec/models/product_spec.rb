require 'rails_helper'

describe "Product" do
	context "Calculate Average" do
		before "Create Product" do
			@product = Product.create!(name: "race bike")
		end

		it "returns the average rating of all comments" do
			expect(average.rating).to eq product.average_rating
		end
	end 

	context "Create User1" do
		before "User1" do
			@user = User.create!(name: "Mike", email: "mike@mike.com", password: "12345")
		end 

		it "should return created User" do
			expect(user.name).to eq "Mike"
		end
	end 

	context "Create User2" do
		before "User2" do
			@user = User.create!(name: "John", email: "john@mike.com", password: "678910")
		end 

		it "should return created User" do
			expect(user.name).to eq "John"
		end
	end 

	context "Create User3" do
		before "User3" do
			@user = User.create!(name: "Julia", email: "Julia@mike.com", password: "678910")
		end 

		it "should return created User" do
			expect(user.name).to eq "Julia"
		end
	end 

	context "Ratings" do
		before "Rating1" do
			@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
		end 

		it "should return created User" do
			expect(user.rating).to eq "1"
		end
	end 

	context "Ratings" do
		before "Rating2" do
			@product.comments.create!(rating: 3, user: @user, body: "It´s okay")
		end 

		it "should return created User" do
			expect(user.rating).to eq "3"
		end
	end

	context "Ratings" do
		before "Rating3" do
			@product.comments.create!(rating: 5, user: @user, body: "Perfect!")
		end 

		it "should return created User" do
			expect(user.rating).to eq "5"
		end
	end 
end



require 'rails_helper'

describe "Product" do
	context "with no strikes or spare" do
		it "sums the pin count for each roll" do
			bowling = Bowling.new
			20.time { bowling.hit(4 )}
			expect(bowling.score).to eq
		end
	end
end
