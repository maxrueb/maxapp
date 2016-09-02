require 'rails_helper'

describe UsersController, :type => :controller do

  let(:user) { User.create!(email: 'peter@example.com', password: '1234567890') }

  describe 'GET #show' do
    context 'User is logged in' do

      before do 
        Devise::Controllers::SignInOut.sign_in user
        
          it 'loads correct user details' do
            get :show
          end 
        
          it 'responds successfully with an HTTP 200 status code' do
            expect(response).to be_success
            expect(response).to have_http_status(200)
          end

          it 'Assign User equals the created user' do
            expect(assigns(:user)).to eq user
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