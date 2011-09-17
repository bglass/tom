require 'spec_helper'

describe "components/index.html.erb" do
  before(:each) do
    assign(:components, [
      stub_model(Component,
        :title => "Title",
        :category_id => 1,
        :abstract => "Abstract",
        :activity_id => 1,
        :sizex => 1.5,
        :sizey => 1.5,
        :technology_id => 1,
        :status => "Status",
        :qlevel => "Qlevel"
      ),
      stub_model(Component,
        :title => "Title",
        :category_id => 1,
        :abstract => "Abstract",
        :activity_id => 1,
        :sizex => 1.5,
        :sizey => 1.5,
        :technology_id => 1,
        :status => "Status",
        :qlevel => "Qlevel"
      )
    ])
  end

  it "renders a list of components" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Abstract".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Qlevel".to_s, :count => 2
  end
end
