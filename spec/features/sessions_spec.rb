 require 'spec_helper'
 require 'capybara/rspec'

 describe "signup page" do
  before { visit login_path }
    describe "with invalid information" do
      before { click_button "Log In"}
        it "should redirect back to signup page" do
      expect(page).to have_content('Username')
    end
  end
  describe " with valid information" do
    let(:user) {FactoryGirl.create(:user) }
      fill_in "Username", with: user.username
      fill_in "Password", with: user.password
      click_button "Sign in"
       it "should send you to home page" do
          expect(page).to have_content('Welcome')
       end
    end
  end


#   scenario "redirects to home page after validating user"
#     visit login_path
#     fill_in 'session[username]', with: 'nishantc'
#     fill_in 'post[email]', with: 'nishantc@nishantc.com'
#     fill_in 'post[password]', with: 'nishant'
#     fill_in 'post[password_confirmation]', with: 'nishant'
