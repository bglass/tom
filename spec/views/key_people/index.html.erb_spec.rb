require 'spec_helper'

describe "key_people/index.html.erb" do
  before(:each) do
    assign(:key_people, [
      stub_model(KeyPerson,
        :activity_id => 1,
        :person_id => 1,
        :role => "Role"
      ),
      stub_model(KeyPerson,
        :activity_id => 1,
        :person_id => 1,
        :role => "Role"
      )
    ])
  end

  it "renders a list of key_people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Role".to_s, :count => 2
  end
end
