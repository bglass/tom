require 'spec_helper'

describe "stamps/new.html.erb" do
  before(:each) do
    assign(:stamp, stub_model(Stamp).as_new_record)
  end

  it "renders new stamp form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stamps_path, :method => "post" do
    end
  end
end
