require 'spec_helper'

describe "meetings/index.html.erb" do
  before(:each) do
    assign(:meetings, [
      stub_model(Meeting,
        :title => "Title",
        :venue => "Venue",
        :stamp_id => 1,
        :number => 1,
        :activity_id => 1,
        :milestone_id => 1
      ),
      stub_model(Meeting,
        :title => "Title",
        :venue => "Venue",
        :stamp_id => 1,
        :number => 1,
        :activity_id => 1,
        :milestone_id => 1
      )
    ])
  end

  it "renders a list of meetings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Venue".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
