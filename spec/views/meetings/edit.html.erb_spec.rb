require 'spec_helper'

describe "meetings/edit.html.erb" do
  before(:each) do
    @meeting = assign(:meeting, stub_model(Meeting,
      :title => "MyString",
      :venue => "MyString",
      :stamp_id => 1,
      :number => 1,
      :activity_id => 1,
      :milestone_id => 1
    ))
  end

  it "renders the edit meeting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meetings_path(@meeting), :method => "post" do
      assert_select "input#meeting_title", :name => "meeting[title]"
      assert_select "input#meeting_venue", :name => "meeting[venue]"
      assert_select "input#meeting_stamp_id", :name => "meeting[stamp_id]"
      assert_select "input#meeting_number", :name => "meeting[number]"
      assert_select "input#meeting_activity_id", :name => "meeting[activity_id]"
      assert_select "input#meeting_milestone_id", :name => "meeting[milestone_id]"
    end
  end
end
