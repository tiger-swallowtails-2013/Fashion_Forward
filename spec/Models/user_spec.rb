require 'spec_helper'

describe "a user" do
  let(:user1) {FactoryGirl.build(:user)}
  it "factory exists" do
  p user1
  expect(user1).to be_valid
  end
end