require "spec_helper"

describe QuestionsController do
  it "creates a question with valid params via the create path" do
    expect { post :create, {
      question: {
        title: "This is a question",
        body: "It has a body that looks like this"
        }
      }
    }.to change{ Question.count }.by(1)
  end
end