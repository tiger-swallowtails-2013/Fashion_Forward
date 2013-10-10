require 'spec_helper'

describe"Sign_up Page" do
  before { visit signup_path }
  it "should have content SignUp" do
    expect(page).to have_content("Sign Up")
  end
end

describe "Show Page" do
  let(:valid_params) { {:user => FactoryGirl.attributes_for(:user)} }
  before {visit user_path(params[:user])}
  it "should have_content(user.name)" do
    expect(page).to have_content(user.username)
  end
end

