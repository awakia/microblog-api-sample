require 'rails_helper'

RSpec.describe "Users", :type => :request do
  describe "GET /users" do
    let!(:user_1) { create(:user) }
    let!(:user_2) { create(:user) }
    it "responses 200" do
      get users_path
      expect(response).to have_http_status(200)
    end

    it "gets UserdataList(json)" do
      get users_path
      json = JSON.load(response.body)

      # check user_1
      expect(json[0]["id"]).to eq(user_1.id)
      expect(json[0]["name"]).to eq(user_1.name)
      expect(json[0]["account_name"]).to eq(user_1.account_name)
      expect(json[0]["email"]).to eq(user_1.email)
      expect(Time.now.to_s(json[0]["created_at"])).to eq(Time.now.to_s(user_1.created_at))
      expect(Time.now.to_s(json[0]["updated_at"])).to eq(Time.now.to_s(user_1.updated_at))

      # check user__2
      expect(json[1]["id"]).to eq(user_2.id)
      expect(json[1]["name"]).to eq(user_2.name)
      expect(json[1]["account_name"]).to eq(user_2.account_name)
      expect(json[1]["email"]).to eq(user_2.email)
      expect(Time.now.to_s(json[1]["created_at"])).to eq(Time.now.to_s(user_2.created_at))
      expect(Time.now.to_s(json[1]["updated_at"])).to eq(Time.now.to_s(user_2.updated_at))
    end
  end
end
