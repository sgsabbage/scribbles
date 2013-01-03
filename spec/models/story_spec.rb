require 'spec_helper'

describe "Story" do

    before(:each) do
        @universe = mock_model("Universe")
    end

    it "is valid with valid attributes" do
        story = Story.new(name: "foo",description: "blah")
        story.universe = @universe
        story.should be_valid
    end

    it "is not valid without a name" do
        story = Story.new(name: nil, description: "foo")
        story.universe = @universe
        story.should_not be_valid
    end

    it "is not valid without a description" do
        story = Story.new(name:"foo", description: nil)
        story.universe = @universe
        story.should_not be_valid
    end

    it "is not valid without a universe" do
        story = Story.new(name:"foo", description: "bar").should_not be_valid
    end
end