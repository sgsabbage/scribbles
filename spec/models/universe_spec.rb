require 'spec_helper'

describe "Universe" do
    it "is valid with valid attributes" do
        Universe.new(name: "foo").should be_valid
    end


    it "is not valid without a name" do
        Universe.new(name: nil).should_not be_valid
    end
end