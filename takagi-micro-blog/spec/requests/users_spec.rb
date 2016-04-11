require 'rails_helper'

RSpec.describe "Users", :type => :request do
  before {
    @user1 = create(:user)
    @user2 = create(:user)
    get users_path
  }
  describe "GET /users" do
    it "responses 200" do
      expect(response).to have_http_status(200)
    end

    it "gets UserdataList(json)" do
      json = JSON.load(response.body)

      # check user_1
      expect(json[0]["id"]).to eq(@user1.id)
      expect(json[0]["name"]).to eq(@user1.name)
      expect(json[0]["account_name"]).to eq(@user1.account_name)
      expect(json[0]["email"]).to eq(@user1.email)
      expect(Time.now.to_s(json[0]["created_at"])).to eq(Time.now.to_s(@user1.created_at))
      expect(Time.now.to_s(json[0]["updated_at"])).to eq(Time.now.to_s(@user1.updated_at))

      # check user_2
      expect(json[1]["id"]).to eq(@user2.id)
      expect(json[1]["name"]).to eq(@user2.name)
      expect(json[1]["account_name"]).to eq(@user2.account_name)
      expect(json[1]["email"]).to eq(@user2.email)
      expect(Time.now.to_s(json[1]["created_at"])).to eq(Time.now.to_s(@user2.created_at))
      expect(Time.now.to_s(json[1]["updated_at"])).to eq(Time.now.to_s(@user2.updated_at))
    end
  end
end
