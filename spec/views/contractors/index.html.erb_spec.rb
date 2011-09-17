require 'spec_helper'

describe "contractors/index.html.erb" do
  before(:each) do
    assign(:contractors, [
      stub_model(Contractor,
        :activity_id => 1,
        :entity_id => 1
      ),
      stub_model(Contractor,
        :activity_id => 1,
        :entity_id => 1
      )
    ])
  end

  it "renders a list of contractors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
