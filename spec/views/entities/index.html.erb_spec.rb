require 'spec_helper'

describe "entities/index.html.erb" do
  before(:each) do
    assign(:entities, [
      stub_model(Entity,
        :company => "Company",
        :city => "City",
        :country => "Country",
        :url => "Url"
      ),
      stub_model(Entity,
        :company => "Company",
        :city => "City",
        :country => "Country",
        :url => "Url"
      )
    ])
  end

  it "renders a list of entities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
