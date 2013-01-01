require 'spec_helper'

describe "foos/new" do
  before(:each) do
    assign(:foo, stub_model(Foo,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new foo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => foos_path, :method => "post" do
      assert_select "input#foo_name", :name => "foo[name]"
    end
  end
end
