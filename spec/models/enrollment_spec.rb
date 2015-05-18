require 'rails_helper'

RSpec.describe Enrollment, type: :model do
  it "should have a course term" do
    expect(subject).to have_attribute(:course_term_id)
  end

  it "should have a student" do
    expect(subject).to have_attribute(:student_id)
  end

  it "should have a course" do
    expect(subject).to have_attribute(:course_id)
  end

  it "is invalid without a course term, student, or course" do
    expect(subject).to be_invalid
  end

  it "is valid with a course term, student, and course" do
    subject.course_term = CourseTerm.new
    subject.student = Student.new
    subject.course = Course.new
    expect(subject).to be_valid
  end
end
