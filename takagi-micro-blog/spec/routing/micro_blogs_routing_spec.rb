require "rails_helper"

RSpec.describe MicroBlogsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/micro_blogs").to route_to("micro_blogs#index")
    end

    it "routes to #new" do
      expect(:get => "/micro_blogs/new").to route_to("micro_blogs#new")
    end

    it "routes to #show" do
      expect(:get => "/micro_blogs/1").to route_to("micro_blogs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/micro_blogs/1/edit").to route_to("micro_blogs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/micro_blogs").to route_to("micro_blogs#create")
    end

    it "routes to #update" do
      expect(:put => "/micro_blogs/1").to route_to("micro_blogs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/micro_blogs/1").to route_to("micro_blogs#destroy", :id => "1")
    end

  end
end
