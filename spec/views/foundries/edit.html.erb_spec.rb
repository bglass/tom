require 'spec_helper'

describe "foundries/edit.html.erb" do
  before(:each) do
    @foundry = assign(:foundry, stub_model(Foundry,
      :name => "MyString",
      :description => "MyString",
      :location => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit foundry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => foundries_path(@foundry), :method => "post" do
      assert_select "input#foundry_name", :name => "foundry[name]"
      assert_select "input#foundry_description", :name => "foundry[description]"
      assert_select "input#foundry_location", :name => "foundry[location]"
      assert_select "input#foundry_url", :name => "foundry[url]"
    end
  end
end
