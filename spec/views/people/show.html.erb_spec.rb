require 'spec_helper'

describe "people/show.html.erb" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :first => "First",
      :last => "Last",
      :section => "Section",
      :role => "Role"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Section/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Role/)
  end
end
