require 'rails_helper'

RSpec.describe CourseTerm, type: :model do
  it "should have a year" do
    expect(subject).to have_attribute(:year)
  end

  it "should have a season" do
    expect(subject).to have_attribute(:season)
  end

  it "has a default season" do
    expect(subject.season).to eq :winter.to_s
  end

  it "is invalid without a year or season" do
    expect(subject).to be_invalid
  end

  it "is valid with a year and season" do
    subject.year = 2015
    subject.season = :summer
    expect(subject).to be_valid
  end
end
