require 'spec_helper'

describe "milestones/show.html.erb" do
  before(:each) do
    @milestone = assign(:milestone, stub_model(Milestone,
      :title => "Title",
      :activity_id => 1,
      :ccn_id => 1,
      :achieved => false,
      :stamp_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
