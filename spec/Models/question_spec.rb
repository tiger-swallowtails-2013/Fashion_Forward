require 'spec_helper'

describe "a question" do
  let(:question1) {FactoryGirl.build(:question)}
  let (:user1) {FactoryGirl.build(:user)}
  it "question exists" do
    p question1
    question1.user_id = user1.id
    expect(question1).to be_valid
  end
end