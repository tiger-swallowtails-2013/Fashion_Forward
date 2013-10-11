require 'spec_helper'

describe Answer do
  let (:valid_params) { {:body => "some response to some question", :user_id => 1, :question_id => 1}}
   it "can be created and saved" do
   	p valid_params
  	@answer = Answer.new(valid_params)
  	@answer.should_not be_persisted
  	@answer.save
  	@answer.should be_persisted
  end

  it { should validate_presence_of :user_id }
  it { should validate_presence_of :question_id }
  it { should validate_presence_of :body }
  it { should belong_to :question }
  it { should belong_to :user }

end
