require 'spec_helper'

describe "entities/new.html.erb" do
  before(:each) do
    assign(:entity, stub_model(Entity,
      :company => "MyString",
      :city => "MyString",
      :country => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new entity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => entities_path, :method => "post" do
      assert_select "input#entity_company", :name => "entity[company]"
      assert_select "input#entity_city", :name => "entity[city]"
      assert_select "input#entity_country", :name => "entity[country]"
      assert_select "input#entity_url", :name => "entity[url]"
    end
  end
end
