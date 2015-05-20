require "rails_helper"

RSpec.describe CourseTermsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/course_terms").to route_to("course_terms#index")
    end

    it "routes to #new" do
      expect(:get => "/course_terms/new").to route_to("course_terms#new")
    end

    it "routes to #show" do
      expect(:get => "/course_terms/1").to route_to("course_terms#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/course_terms/1/edit").to route_to("course_terms#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/course_terms").to route_to("course_terms#create")
    end

    it "routes to #update" do
      expect(:put => "/course_terms/1").to route_to("course_terms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/course_terms/1").to route_to("course_terms#destroy", :id => "1")
    end

  end
end
