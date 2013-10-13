require 'spec_helper'

describe UsersController do
  let(:user) { user = FactoryGirl.create(:user_with_answers) }
  describe "#show" do
    it "assigns the users answers to @answers" do
      get :show, { id: user.id }

      expect(assigns(:answers)).to eq user.answers
    end

    it "Assigns the passed in user to @user" do
      get :show, { id: user.id }

      expect(assigns(:user)).to eq user
    end
  end

  describe "#create" do
    def send_create_user_request
      post :create, { user: FactoryGirl.attributes_for(user_factory) }
    end
    context "when invalid user params are passed in" do
      let(:user_factory) { :invalid_user }
      it "does not save the user" do
        expect {
          send_create_user_request
        }.not_to change { User.count }
      end

      it "re-renders the new user page" do
        send_create_user_request
        expect(response).to render_template(:new)
      end
    end

    context "when valid user params are passed in" do
      let(:user_factory) { :user }
      it "saves the user" do
        expect {
          send_create_user_request
        }.to change { User.count }
      end

      it "redirects to the home page" do
        send_create_user_request
        expect(response).to redirect_to root_url
      end

      it "logs in the user immediately" # Not sure how to write this test yet, but it seems valuable
    end
  end
end
