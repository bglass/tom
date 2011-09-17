require 'spec_helper'

describe "key_people/new.html.erb" do
  before(:each) do
    assign(:key_person, stub_model(KeyPerson,
      :activity_id => 1,
      :person_id => 1,
      :role => "MyString"
    ).as_new_record)
  end

  it "renders new key_person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => key_people_path, :method => "post" do
      assert_select "input#key_person_activity_id", :name => "key_person[activity_id]"
      assert_select "input#key_person_person_id", :name => "key_person[person_id]"
      assert_select "input#key_person_role", :name => "key_person[role]"
    end
  end
end
