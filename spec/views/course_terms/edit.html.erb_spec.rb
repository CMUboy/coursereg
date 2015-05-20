require 'rails_helper'

RSpec.describe "course_terms/edit", type: :view do
  before(:each) do
    @course_term = assign(:course_term, CourseTerm.create!())
  end

  it "renders the edit course_term form" do
    render

    assert_select "form[action=?][method=?]", course_term_path(@course_term), "post" do
    end
  end
end
