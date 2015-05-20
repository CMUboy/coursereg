require 'rails_helper'

RSpec.describe "course_terms/show", type: :view do
  before(:each) do
    @course_term = assign(:course_term, CourseTerm.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
