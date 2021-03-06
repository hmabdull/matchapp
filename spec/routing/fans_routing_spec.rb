require "spec_helper"

describe FansController do
  describe "routing" do

    it "routes to #index" do
      get("/fans").should route_to("fans#index")
    end

    it "routes to #new" do
      get("/fans/new").should route_to("fans#new")
    end

    it "routes to #show" do
      get("/fans/1").should route_to("fans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fans/1/edit").should route_to("fans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fans").should route_to("fans#create")
    end

    it "routes to #update" do
      put("/fans/1").should route_to("fans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fans/1").should route_to("fans#destroy", :id => "1")
    end

  end
end
