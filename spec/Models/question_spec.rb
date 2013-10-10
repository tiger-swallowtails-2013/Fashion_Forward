require 'spec_helper'

describe "a question" do

  let(:question1) {FactoryGirl.build(:question)}
  let(:user1) {FactoryGirl.build(:user)}
  let(:answer1) {FactoryGirl.build(:answer)}
  let(:answer2) {FactoryGirl.build(:answer)}
  it "question exists" do
    question1.user_id = user1.id
    expect(question1).to be_valid
  end
  # Answer.all isn't working even though answer1 is an
  #Answer object

  # it "question can have more than one answer" do
  #   question1.id = 1
  #   answer1.question_id = 1
  #   answer2.question_id = 1
  #   p answer1
  #   p "answers.question_id:"
  #   expect(question1.answers.length).to eql(2)
  # end
end