require 'spec_helper'
require 'capybara/rspec'

describe UsersController do
  before { visit signup_path }
  describe "Get #new" do
   it "shows signup page" do
      response.should render_template :new
     end
  #   it "creates user if valid params"
  #    fill_in 'user[email]', with: 'nishantc'
  #    fill_in user[email], with: 'nishantc@nishantc.com'
  #    fill_in user[password], with: 'nishant'
  #    fill_in user[password_confirmation], with: 'nishant'
  #     click_button 'submit'
  #     expect(page).to have_content('Welcome')
  end
end
