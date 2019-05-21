require "rails_helper"

RSpec.describe UsersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/users").not_to be_routable
    end

    it "routes to #show" do
      expect(:get => "/users/1").not_to be_routable
    end


    it "routes to #create" do
      expect(:post => "/users").to route_to("users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/users/1").not_to be_routable
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/users/1").not_to be_routable
    end

    it "routes to #destroy" do
      expect(:delete => "/users/1").not_to be_routable
    end
  end
end
