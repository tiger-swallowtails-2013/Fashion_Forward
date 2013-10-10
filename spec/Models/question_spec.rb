require 'spec_helper'

describe "questions controller" do

  let(:question1) {FactoryGirl.build(:question)}
  let(:user1) {FactoryGirl.build(:user)}

  it "question exists" do
    question1.user_id = user1.id
    expect(question1).to be_valid
  end

  it "question must contain title" do
    question1.title = nil
    question1.valid?
    expect(question1.errors).to have_key(:title)
  end

  it "question must contain body" do
    question1.body = nil
    question1.valid?
    expect(question1.errors).to have_key(:body)
  end

  it "question must contain user_id" do
    question1.user_id = nil
    question1.valid?
    expect(question1.errors).to have_key(:user_id)
  end

  # it "question can have more than one answer" do
  #   question = Question.new(:title => 'me the title', :body => 'me some text', :user => 'user12')
  #   question.id = 1
  #   p question
  #   answer1 = Answer.new(:body => 'me the answer', :user_id => 12, :user => 'user12')
  #   answer1.question_id = 1
  #   p answer1.save!
  #   p question.save!
  #   p Question.last
  #   p Answer.last
  #   expect(Answer.all.question_id.count).to be > 1
  # end

end