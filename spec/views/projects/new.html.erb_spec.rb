require 'spec_helper'

describe "projects/new.html.erb" do
  before(:each) do
    assign(:project, stub_model(Project,
      :title => "MyString",
      :abstract => "MyString",
      :person_id => 1
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path, :method => "post" do
      assert_select "input#project_title", :name => "project[title]"
      assert_select "input#project_abstract", :name => "project[abstract]"
      assert_select "input#project_person_id", :name => "project[person_id]"
    end
  end
end
