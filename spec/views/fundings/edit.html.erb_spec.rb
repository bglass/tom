require 'spec_helper'

describe "fundings/edit.html.erb" do
  before(:each) do
    @funding = assign(:funding, stub_model(Funding,
      :title => "MyString",
      :abstract => "MyString"
    ))
  end

  it "renders the edit funding form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fundings_path(@funding), :method => "post" do
      assert_select "input#funding_title", :name => "funding[title]"
      assert_select "input#funding_abstract", :name => "funding[abstract]"
    end
  end
end
