require 'spec_helper'

describe Question do
  it { should validate_presence_of :title }
  it { should validate_presence_of :body }
  it { should have_many :answers }
  it { should belong_to :user }
end