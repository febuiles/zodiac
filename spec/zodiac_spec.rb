require File.dirname(__FILE__) + "/spec_helper"

include ZodiacHelper

describe "Zodiac" do
  before :each do
    @date = Time.utc(2000, "jun", 12)
  end

  it "returns the zodiac sign for a given Time" do
    zodiac_sign_for(@date).should == "Gemini"
  end

  it "returns the zodiac sign for a given number" do
    zodiac_sign_for(612).should == "Gemini"
  end

  it "receives a number that represents a month and day" do
    zodiac_sign_for(612).should == zodiac_sign_for(@date)
  end

  it "raises if the date's invalid" do
    lambda {zodiac_sign_for(9999)}.should raise_error(RuntimeError)
    lambda {zodiac_sign_for("9999")}.should raise_error(RuntimeError)
  end
end
