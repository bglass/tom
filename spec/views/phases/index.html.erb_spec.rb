require 'spec_helper'

describe "phases/index.html.erb" do
  before(:each) do
    assign(:phases, [
      stub_model(Phase,
        :name => "Name",
        :activity_id => 1,
        :description => "Description"
      ),
      stub_model(Phase,
        :name => "Name",
        :activity_id => 1,
        :description => "Description"
      )
    ])
  end

  it "renders a list of phases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
