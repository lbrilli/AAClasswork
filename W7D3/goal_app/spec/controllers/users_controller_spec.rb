require 'rails_helper'

RSpec.describe UsersController , type: :controller do
  describe "POST #create" do
    context 'with invalid params' do
      it "validates the presence of the user's email and password" do
        post :create, params: {user: {username: 'aaTester',password: ''}}
        expect(response).to render_template('new')
      end
      
      it "validates password length is 6 characters or longer" do
        post :create, params: {user: {username: 'aaTester',password: 'hunt'}}
        expect(response).to render_template('new')
      end
    end
    
    context 'with valid params' do
      it 'redirects user to sign in page' do
        post :create, params: {user: {username: 'aaTester',password: 'hunter12'}}
        expect(response).to redirect_to(new_session_url)
      end
    end

  end
end
