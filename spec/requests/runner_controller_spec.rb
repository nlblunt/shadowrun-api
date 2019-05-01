require 'rails_helper'

RSpec.describe RunnerController, :type => :request do
	before(:context) do
		User.delete_all
		@user = create(:user, email: "test2@email.com")
		@meta = create(:metatype)
	end

	subject { create(:runner, user_id: create(:user).id, metatype_id: create(:metatype).id) }

	describe "creates a new Completed Runner" do
  	it "returns http success and creates a new Runner for the user with valid params" do
			post "/runner/create_runner", params: {runner: {user_id: @user.id, metatype_id: @meta.id, name: "Test Runner", concept: "Rigger",
			body: 2, agility: 2, reaction: 2, strength: 2, willpower: 2, logic: 2, intuition: 2, charisma: 2},
			skills: [{id: 1, name: "Test", rank: 1},{id: 2, name: "Test2", rank: 2}]}
			expect(response).to have_http_status(:success)
			expect(Runner.count).to eq(1)
		 end
		 
		 it "returns an error with invalid params" do
			post "/runner/create_runner", params: {runner: {name: "Failed Runner"}, skills: [{id: 1, name: "Test", rank: 1}]}
			expect(response).to have_http_status(:error)
		 end
	end

	it "creates a new Baseline Runner for the User" do
		#params = {user_id: @user.id, metatype_id: @meta.id, name: "Test Runner", concept: "Rigger"}

		post "/runner/create", params: {runner:{user_id: @user.id, metatype_id: @meta.id, name: "Test Runner 2", concept: "Rigger"}}
		expect(response).to have_http_status(:success)
		expect(Runner.count).to eq(1)
	end

	describe "increases attributes" do
		it "and returns success on valid request" do
			post "/runner/increase_attribute", params: {runner_id: subject.id, attrib: "body", amount: 1}
			expect(response).to have_http_status(:success)
		end
		it "and returns error on invalid request" do
			post "/runner/increase_attribute", params: {runner_id: subject.id, attrib: "body", amount: 100}
			expect(response).to have_http_status(:bad_request)
		end
	end
end
