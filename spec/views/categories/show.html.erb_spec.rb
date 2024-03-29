require 'spec_helper'

describe "categories/show.html.erb" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :categorytype => "Categorytype",
      :abstract => "Abstract"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Categorytype/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Abstract/)
  end
end
