require 'spec_helper'

describe "fundings/show.html.erb" do
  before(:each) do
    @funding = assign(:funding, stub_model(Funding,
      :title => "Title",
      :abstract => "Abstract"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Abstract/)
  end
end
