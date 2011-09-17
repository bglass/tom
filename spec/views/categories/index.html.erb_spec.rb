require 'spec_helper'

describe "categories/index.html.erb" do
  before(:each) do
    assign(:categories, [
      stub_model(Category,
        :categorytype => "Categorytype",
        :abstract => "Abstract"
      ),
      stub_model(Category,
        :categorytype => "Categorytype",
        :abstract => "Abstract"
      )
    ])
  end

  it "renders a list of categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Categorytype".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Abstract".to_s, :count => 2
  end
end
