require 'spec_helper'

describe "a user" do
  let(:user1) {FactoryGirl.build(:user)}
  it "factory exists" do
  p user1
  expect(user1).to be_valid
  end
  it "factory doesn't exist if no username is present" do
    user1.username = nil
    expect(user1).to_not be_valid
  end
  it "factory doesn't exist if password is not present" do
    user1.password = nil
    expect(user1).to_not be_valid
  end

end