require 'spec_helper'

describe "technologies/index.html.erb" do
  before(:each) do
    assign(:technologies, [
      stub_model(Technology,
        :foundry_id => 1,
        :type => "Type",
        :size => 1.5,
        :name => "Name"
      ),
      stub_model(Technology,
        :foundry_id => 1,
        :type => "Type",
        :size => 1.5,
        :name => "Name"
      )
    ])
  end

  it "renders a list of technologies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
