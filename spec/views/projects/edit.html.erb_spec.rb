require 'spec_helper'

describe "projects/edit.html.erb" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :title => "MyString",
      :abstract => "MyString",
      :person_id => 1
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path(@project), :method => "post" do
      assert_select "input#project_title", :name => "project[title]"
      assert_select "input#project_abstract", :name => "project[abstract]"
      assert_select "input#project_person_id", :name => "project[person_id]"
    end
  end
end
