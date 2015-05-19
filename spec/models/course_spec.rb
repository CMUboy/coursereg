require 'rails_helper'

RSpec.describe Course, type: :model do
  it "should have a number" do
    expect(subject).to have_attribute(:number)
  end

  it "should have a title" do
    expect(subject).to have_attribute(:title)
  end

  it "should have a description" do
    expect(subject).to have_attribute(:description)
  end

  it "should have an enrollment capacity" do
    expect(subject).to have_attribute(:enrollment_capacity)
  end

  it "is invalid without a number, title, or enrollment capacity" do
    expect(subject).to be_invalid
  end

  describe "course validations" do
    before :each do
      @course = Course.new
      @course.number = "RUBY DL210"
      @course.title = "Applications with Ruby on Rails"
      @course.enrollment_capacity = 30
    end

    it "is valid with a number, title, and enrollment capacity" do
      expect(@course).to be_valid
    end

    it "is invalid without a positive enrollment capacity" do
      @course.enrollment_capacity = 0
      expect(subject).to be_invalid
    end
  end
end
