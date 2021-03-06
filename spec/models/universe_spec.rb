require 'spec_helper'

describe Universe do
    it "is valid with valid attributes" do
        @universe = Universe.new(name: "foo", description: "blah")
        @universe.should be_valid
    end

    it "is not valid without a name" do
        Universe.new(name: nil).should_not be_valid
    end

    it "is valid without a description" do
        Universe.new(name:"foo", description: nil).should be_valid
    end
end