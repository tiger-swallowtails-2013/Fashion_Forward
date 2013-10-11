require 'spec_helper'

describe User do
  it { should validate_presence_of :username }
  it { should validate_uniqueness_of :username }
  it { should validate_confirmation_of :password }
  it { should have_many :questions }
end