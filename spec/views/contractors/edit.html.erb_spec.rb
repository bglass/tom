require 'spec_helper'

describe "contractors/edit.html.erb" do
  before(:each) do
    @contractor = assign(:contractor, stub_model(Contractor,
      :activity_id => 1,
      :entity_id => 1
    ))
  end

  it "renders the edit contractor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contractors_path(@contractor), :method => "post" do
      assert_select "input#contractor_activity_id", :name => "contractor[activity_id]"
      assert_select "input#contractor_entity_id", :name => "contractor[entity_id]"
    end
  end
end
