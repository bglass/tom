require 'spec_helper'

describe "components/new.html.erb" do
  before(:each) do
    assign(:component, stub_model(Component,
      :title => "MyString",
      :category_id => 1,
      :abstract => "MyString",
      :activity_id => 1,
      :sizex => 1.5,
      :sizey => 1.5,
      :technology_id => 1,
      :status => "MyString",
      :qlevel => "MyString"
    ).as_new_record)
  end

  it "renders new component form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => components_path, :method => "post" do
      assert_select "input#component_title", :name => "component[title]"
      assert_select "input#component_category_id", :name => "component[category_id]"
      assert_select "input#component_abstract", :name => "component[abstract]"
      assert_select "input#component_activity_id", :name => "component[activity_id]"
      assert_select "input#component_sizex", :name => "component[sizex]"
      assert_select "input#component_sizey", :name => "component[sizey]"
      assert_select "input#component_technology_id", :name => "component[technology_id]"
      assert_select "input#component_status", :name => "component[status]"
      assert_select "input#component_qlevel", :name => "component[qlevel]"
    end
  end
end
