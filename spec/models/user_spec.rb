require "rails_helper"

describe User, :type => :model do
  it "orders by last name" do
    lindeman = User.create!(first_name: "Peter", last_name: "Smith", email: "smith@example.com", password: "12341234", password_confirmation: "12341234")
    chelimsky = User.create!(first_name: "Julia", last_name: "Light", email: "light@example.com", password: "12341243", password_confirmation: "12341243")

    expect(User.all("last_name")).to eq([smith, light])
  end
end
