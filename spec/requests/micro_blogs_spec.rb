require 'rails_helper'

RSpec.describe "MicroBlogs", :type => :request do
  describe "GET /micro_blogs" do
    it "works! (now write some real specs)" do
      get micro_blogs_path
      expect(response).to have_http_status(200)
    end
  end
end
