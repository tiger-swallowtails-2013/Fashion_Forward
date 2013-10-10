require 'spec_helper'

describe"Sign_up Page" do
  before { visit signup_path }
  it "should have content SignUp" do
    expect(page).to have_content("Sign Up")
  end
end

