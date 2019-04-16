require 'rails_helper'

RSpec.describe RunnerController, type: :controller do

  describe "GET #create" do
    it "returns http success" do
      post :create, params{name: "Test"}
      expect(response).to have_http_status(:success)
    end
  end

end
