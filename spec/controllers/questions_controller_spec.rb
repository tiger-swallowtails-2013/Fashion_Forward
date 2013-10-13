require "spec_helper"

describe QuestionsController do
  describe "#create" do
    let(:question_attributes) { FactoryGirl.attributes_for(question_factory) }
    def send_create_question_request
      post :create, { question: question_attributes }
    end
    context "with a valid question" do
      let(:question_factory) { :valid_question }
      it "saves the question" do
        expect {
          send_create_question_request
        }.to change{ Question.count }.by(1)
      end
    end
    context "with an invalid question" do
      let(:question_factory) { :invalid_question }
      it "does not create the question" do
        expect {
          send_create_question_request
        }.not_to change{ Question.count }
      end
    end
  end

end
