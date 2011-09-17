require 'spec_helper'

describe "people/edit.html.erb" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :first => "MyString",
      :last => "MyString",
      :section => "MyString",
      :role => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path(@person), :method => "post" do
      assert_select "input#person_first", :name => "person[first]"
      assert_select "input#person_last", :name => "person[last]"
      assert_select "input#person_section", :name => "person[section]"
      assert_select "input#person_role", :name => "person[role]"
    end
  end
end
