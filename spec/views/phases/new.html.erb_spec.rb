require 'spec_helper'

describe "phases/new.html.erb" do
  before(:each) do
    assign(:phase, stub_model(Phase,
      :name => "MyString",
      :activity_id => 1,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new phase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => phases_path, :method => "post" do
      assert_select "input#phase_name", :name => "phase[name]"
      assert_select "input#phase_activity_id", :name => "phase[activity_id]"
      assert_select "input#phase_description", :name => "phase[description]"
    end
  end
end
