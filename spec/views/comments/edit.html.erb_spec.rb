require 'spec_helper'

describe "comments/edit.html.erb" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :activity_id => 1,
      :title => "MyString",
      :text => "MyString"
    ))
  end

  it "renders the edit comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path(@comment), :method => "post" do
      assert_select "input#comment_activity_id", :name => "comment[activity_id]"
      assert_select "input#comment_title", :name => "comment[title]"
      assert_select "input#comment_text", :name => "comment[text]"
    end
  end
end
