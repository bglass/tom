require 'spec_helper'

describe "fundings/index.html.erb" do
  before(:each) do
    assign(:fundings, [
      stub_model(Funding,
        :title => "Title",
        :abstract => "Abstract"
      ),
      stub_model(Funding,
        :title => "Title",
        :abstract => "Abstract"
      )
    ])
  end

  it "renders a list of fundings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Abstract".to_s, :count => 2
  end
end
