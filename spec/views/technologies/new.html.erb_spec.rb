require 'spec_helper'

describe "technologies/new.html.erb" do
  before(:each) do
    assign(:technology, stub_model(Technology,
      :foundry_id => 1,
      :type => "",
      :size => 1.5,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new technology form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => technologies_path, :method => "post" do
      assert_select "input#technology_foundry_id", :name => "technology[foundry_id]"
      assert_select "input#technology_type", :name => "technology[type]"
      assert_select "input#technology_size", :name => "technology[size]"
      assert_select "input#technology_name", :name => "technology[name]"
    end
  end
end
