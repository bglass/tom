require 'spec_helper'

describe "deliverables/new.html.erb" do
  before(:each) do
    assign(:deliverable, stub_model(Deliverable,
      :title => "MyString",
      :number => "MyString",
      :activity_id => 1,
      :milestone_id => 1,
      :status => "MyString",
      :accepted => false
    ).as_new_record)
  end

  it "renders new deliverable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => deliverables_path, :method => "post" do
      assert_select "input#deliverable_title", :name => "deliverable[title]"
      assert_select "input#deliverable_number", :name => "deliverable[number]"
      assert_select "input#deliverable_activity_id", :name => "deliverable[activity_id]"
      assert_select "input#deliverable_milestone_id", :name => "deliverable[milestone_id]"
      assert_select "input#deliverable_status", :name => "deliverable[status]"
      assert_select "input#deliverable_accepted", :name => "deliverable[accepted]"
    end
  end
end
