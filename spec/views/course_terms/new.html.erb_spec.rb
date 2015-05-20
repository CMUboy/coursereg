require 'rails_helper'

RSpec.describe "course_terms/new", type: :view do
  before(:each) do
    assign(:course_term, CourseTerm.new())
  end

  it "renders new course_term form" do
    render

    assert_select "form[action=?][method=?]", course_terms_path, "post" do
    end
  end
end
