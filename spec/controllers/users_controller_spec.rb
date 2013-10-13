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
end
