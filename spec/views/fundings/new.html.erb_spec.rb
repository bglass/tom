require 'spec_helper'

describe "fundings/new.html.erb" do
  before(:each) do
    assign(:funding, stub_model(Funding,
      :title => "MyString",
      :abstract => "MyString"
    ).as_new_record)
  end

  it "renders new funding form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fundings_path, :method => "post" do
      assert_select "input#funding_title", :name => "funding[title]"
      assert_select "input#funding_abstract", :name => "funding[abstract]"
    end
  end
end
