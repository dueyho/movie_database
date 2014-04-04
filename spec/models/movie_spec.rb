require 'spec_helper'

describe Movie do
  it { should validate_presence_of :name }
  it { should validate_presence_of :url }
  it { should have_and_belong_to_many :genres}
end
