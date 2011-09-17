require 'spec_helper'

describe "contractors/show.html.erb" do
  before(:each) do
    @contractor = assign(:contractor, stub_model(Contractor,
      :activity_id => 1,
      :entity_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
