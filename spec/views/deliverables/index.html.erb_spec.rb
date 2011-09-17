require 'spec_helper'

describe "deliverables/index.html.erb" do
  before(:each) do
    assign(:deliverables, [
      stub_model(Deliverable,
        :title => "Title",
        :number => "Number",
        :activity_id => 1,
        :milestone_id => 1,
        :status => "Status",
        :accepted => false
      ),
      stub_model(Deliverable,
        :title => "Title",
        :number => "Number",
        :activity_id => 1,
        :milestone_id => 1,
        :status => "Status",
        :accepted => false
      )
    ])
  end

  it "renders a list of deliverables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
