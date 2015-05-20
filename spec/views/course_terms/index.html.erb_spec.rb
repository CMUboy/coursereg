require 'rails_helper'

RSpec.describe "course_terms/index", type: :view do
  before(:each) do
    assign(:course_terms, [
      CourseTerm.create!(),
      CourseTerm.create!()
    ])
  end

  it "renders a list of course_terms" do
    render
  end
end
