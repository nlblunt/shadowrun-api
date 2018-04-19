require 'rails_helper'

RSpec.describe Metatype, type: :model do
  subject { create(:metatype) }

    it "is valid with valid attributes" do
  		expect(subject).to be_valid
  	end

  	it "is not valid without a name" do
  		subject.name = nil
  		expect(subject).to_not be_valid
  	end

  	describe "associations" do
  		it { should have_many(:runners) }
  	end
end
