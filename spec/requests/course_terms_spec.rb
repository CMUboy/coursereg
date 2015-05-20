require 'rails_helper'

RSpec.describe "CourseTerms", type: :request do
  describe "GET /course_terms" do
    it "works! (now write some real specs)" do
      get course_terms_path
      expect(response).to have_http_status(200)
    end
  end
end
