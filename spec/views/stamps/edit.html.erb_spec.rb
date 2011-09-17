require 'spec_helper'

describe "stamps/edit.html.erb" do
  before(:each) do
    @stamp = assign(:stamp, stub_model(Stamp))
  end

  it "renders the edit stamp form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stamps_path(@stamp), :method => "post" do
    end
  end
end
