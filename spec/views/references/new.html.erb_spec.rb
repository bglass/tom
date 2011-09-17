require 'spec_helper'

describe "references/new.html.erb" do
  before(:each) do
    assign(:reference, stub_model(Reference,
      :activity_id => 1,
      :title => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new reference form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => references_path, :method => "post" do
      assert_select "input#reference_activity_id", :name => "reference[activity_id]"
      assert_select "input#reference_title", :name => "reference[title]"
      assert_select "input#reference_url", :name => "reference[url]"
    end
  end
end
