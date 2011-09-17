require 'spec_helper'

describe "key_people/show.html.erb" do
  before(:each) do
    @key_person = assign(:key_person, stub_model(KeyPerson,
      :activity_id => 1,
      :person_id => 1,
      :role => "Role"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Role/)
  end
end
