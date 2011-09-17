require 'spec_helper'

describe "categories/edit.html.erb" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :categorytype => "MyString",
      :abstract => "MyString"
    ))
  end

  it "renders the edit category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categories_path(@category), :method => "post" do
      assert_select "input#category_categorytype", :name => "category[categorytype]"
      assert_select "input#category_abstract", :name => "category[abstract]"
    end
  end
end
