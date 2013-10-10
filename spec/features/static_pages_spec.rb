require'spec_helper'

describe "Static pages" do
  context "Home page" do

    it "should have the content WELCOME" do
      visit '/static_pages/home'
      expect(page).to have_content("WELCOME")
    end
  end
end
