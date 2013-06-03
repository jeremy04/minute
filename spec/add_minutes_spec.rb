require "rspec"

require File.dirname(__FILE__) + '/../add_minutes'

describe "Add minutes" do

  it "returns 9:23 pm when adding 10 minutes to 9:13pm" do
    add_minutes("9:13 PM", 10).should == "9:23 PM"
  end

  it "returns 9:14 pm when adding 0 minutes to 9:14pm" do
    add_minutes("9:14 PM", 0).should == "9:14 PM"
  end

  it "returns 4:00 pm when adding 10 minutes to 3:50pm" do
    add_minutes("3:50 PM", 10).should == "4:00 PM"
  end

  it "returns 12:00PM when adding 10 minutes to 11:50AM" do
    add_minutes("11:50 AM", 10).should == "12:00 PM"
  end

  it "raises an exception when hour is invalid" do
    lambda { add_minutes("13:50 AM", 10) }.should raise_error(ArgumentError, "Invalid hour")
  end

  it "raises an exception when minutes is invalid" do
    lambda { add_minutes("3:70 AM", 10) }.should raise_error(ArgumentError, "Invalid minute")
  end

end
