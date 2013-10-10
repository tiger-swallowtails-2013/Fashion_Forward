require'spec_helper'

describe "Static pages" do
  context "Home page" do

    it "should have the content WELCOME" do
      visit '/'
      expect(page).to have_content("WELCOME")
    end

  it "should re-direct to the signup page" do
    visit '/'
    click_link "Sign up now!"
    expect(page).to have_content("Sign Up")
  end
 end
end




