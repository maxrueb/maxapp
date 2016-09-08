require 'rails_helper'

describe UsersController, :type => :controller do

  before do
    @user = User.create!(first_name: "Andy", last_name: "Lindeman", email: "andy@example.com", password: "abcdefgh")
    @user2 = User.create!(first_name: "Andy", last_name: "Lindeman", email: "andy2@example.com", password: "abcdefgh")
    #@user = FactoryGirl.create(:user)
  end

  describe 'GET #show' do
    context 'User is logged in' do
      before do 
        sign_in @user
      end
        
          it 'responds successfully with an HTTP 200 status code' do
            get :show, id: @user.id
            expect(response.status).to eq 200
            expect(assigns(:user)).to eq @user
          end
      end

    context 'No user is logged in' do
       it 'redirects to login' do
         get :show, id: user.id
         expect(response).to redirect_to(root_path)
        end
    end
  end

end


# Alternative 
  # before :each do
  #   @user = FactoryGirl.create :user
  #   sign_in @user
  # end

  # describe "GET index" do
  #   it "assigns all subscribers as @subscribers" do
  #     subscriber = @user.subscribers.create! valid_attributes
  #     get :index
  #     assigns(:subscribers).should eq([subscriber])
  #   end
  # end