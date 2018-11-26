require "rails_helper"

RSpec.describe CrudtutoriaisController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/crudtutoriais").to route_to("crudtutoriais#index")
    end

    it "routes to #new" do
      expect(:get => "/crudtutoriais/new").to route_to("crudtutoriais#new")
    end

    it "routes to #show" do
      expect(:get => "/crudtutoriais/1").to route_to("crudtutoriais#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/crudtutoriais/1/edit").to route_to("crudtutoriais#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/crudtutoriais").to route_to("crudtutoriais#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/crudtutoriais/1").to route_to("crudtutoriais#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/crudtutoriais/1").to route_to("crudtutoriais#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/crudtutoriais/1").to route_to("crudtutoriais#destroy", :id => "1")
    end
  end
end
