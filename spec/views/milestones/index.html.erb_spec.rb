require 'spec_helper'

describe "milestones/index.html.erb" do
  before(:each) do
    assign(:milestones, [
      stub_model(Milestone,
        :title => "Title",
        :activity_id => 1,
        :ccn_id => 1,
        :achieved => false,
        :stamp_id => 1
      ),
      stub_model(Milestone,
        :title => "Title",
        :activity_id => 1,
        :ccn_id => 1,
        :achieved => false,
        :stamp_id => 1
      )
    ])
  end

  it "renders a list of milestones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
