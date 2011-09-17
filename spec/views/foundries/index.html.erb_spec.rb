require 'spec_helper'

describe "foundries/index.html.erb" do
  before(:each) do
    assign(:foundries, [
      stub_model(Foundry,
        :name => "Name",
        :description => "Description",
        :location => "Location",
        :url => "Url"
      ),
      stub_model(Foundry,
        :name => "Name",
        :description => "Description",
        :location => "Location",
        :url => "Url"
      )
    ])
  end

  it "renders a list of foundries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
