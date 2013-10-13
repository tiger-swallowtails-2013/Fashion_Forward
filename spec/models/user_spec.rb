require 'spec_helper'

describe User do
  it { should validate_presence_of :username }
  it { should validate_confirmation_of :password }
  it { should have_many :questions }
  it { should have_many :answers }


  describe ".authenticate" do
    context "when a user exists with the username and password" do
      it "returns the user" do
        user = FactoryGirl.create(:user)
        expect(User.authenticate(user.username, 'password')).to eql user
      end
    end

    context "when a user does not exist with the username and password" do
      it "returns nil" do
        expect(User.authenticate("Jimbob", "password")).to be_nil
      end
    end
  end
end
