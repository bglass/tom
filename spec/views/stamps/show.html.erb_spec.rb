require 'spec_helper'

describe "stamps/show.html.erb" do
  before(:each) do
    @stamp = assign(:stamp, stub_model(Stamp))
  end

  it "renders attributes in <p>" do
    render
  end
end
