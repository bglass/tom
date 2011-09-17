require 'spec_helper'

describe "milestones/edit.html.erb" do
  before(:each) do
    @milestone = assign(:milestone, stub_model(Milestone,
      :title => "MyString",
      :activity_id => 1,
      :ccn_id => 1,
      :achieved => false,
      :stamp_id => 1
    ))
  end

  it "renders the edit milestone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => milestones_path(@milestone), :method => "post" do
      assert_select "input#milestone_title", :name => "milestone[title]"
      assert_select "input#milestone_activity_id", :name => "milestone[activity_id]"
      assert_select "input#milestone_ccn_id", :name => "milestone[ccn_id]"
      assert_select "input#milestone_achieved", :name => "milestone[achieved]"
      assert_select "input#milestone_stamp_id", :name => "milestone[stamp_id]"
    end
  end
end
