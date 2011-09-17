require 'spec_helper'

describe "stamps/index.html.erb" do
  before(:each) do
    assign(:stamps, [
      stub_model(Stamp),
      stub_model(Stamp)
    ])
  end

  it "renders a list of stamps" do
    render
  end
end
