require 'rails_helper'

RSpec.describe Runner, type: :model do
	before(:context) do
		User.delete_all
		#@user = create(:user)
	end

	subject { create(:runner, user_id: create(:user).id, metatype_id: create(:metatype).id) }

  	it "is valid with valid attributes" do
  		expect(subject).to be_valid
  	end

  	it "is not valid without a name" do
  		subject.name = nil
  		expect(subject).to_not be_valid
  	end

  	it "is not valid without a concept" do
  		subject.concept = nil
  		expect(subject).to_not be_valid
  	end

  	it "is not valid without a valid USER" do
  		subject.user_id = nil
  		expect(subject).to_not be_valid
  	end

  	it "is not valid without a valid METATYPE" do
  		subject.metatype_id = nil
  		expect(subject).to_not be_valid
  	end

  	### NOT VALID WITHOUT ANY ATTRIBUTE MISSING
  	it "is not valid without any attribute missing" do
  		subject.body = nil
  		subject.agility = nil
  		subject.reaction = nil
  		subject.strength = nil
  		subject.willpower = nil
  		subject.logic = nil
  		subject.intuition = nil
  		subject.charisma = nil
  		expect(subject).to_not be_valid
  	end

  	it "starts with metatype starting values" do
  		subject.set_initial_attributes
  		subject.reload
  		
  		expect(subject.agility).to eq(subject.metatype.agility_start)
  		expect(subject.body).to eq(subject.metatype.body_start)
  	end

  	it "can not have a higher value than metatype" do
  		subject.adjust_attribute("strength", 100)
  		expect(subject.errors[:error].first).to eq "value too high"
  	end

  	describe "Associations" do
  		it { should belong_to(:user) }
  		it { should belong_to(:metatype) }
  	end
end
