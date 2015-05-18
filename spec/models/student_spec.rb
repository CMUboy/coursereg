require 'rails_helper'

RSpec.describe Student, type: :model do
  it "should have a number" do
    expect(subject).to have_attribute(:number)
  end

  it "should have a first name" do
    expect(subject).to have_attribute(:first_name)
  end

  it "should have a last name" do
    expect(subject).to have_attribute(:last_name)
  end

  it "is invalid without a number, first name, or last name" do
    expect(subject).to be_invalid
  end

  it "is valid with a number, first name, and last name" do
    subject.number = "2015051701"
    subject.first_name = "John"
    subject.last_name = "Smith"
    expect(subject).to be_valid
  end
end
