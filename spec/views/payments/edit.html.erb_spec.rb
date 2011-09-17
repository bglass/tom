require 'spec_helper'

describe "payments/edit.html.erb" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :milestone_id => 1,
      :amount => 1,
      :invoiced => false,
      :paid => false,
      :stamp_id => 1
    ))
  end

  it "renders the edit payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payments_path(@payment), :method => "post" do
      assert_select "input#payment_milestone_id", :name => "payment[milestone_id]"
      assert_select "input#payment_amount", :name => "payment[amount]"
      assert_select "input#payment_invoiced", :name => "payment[invoiced]"
      assert_select "input#payment_paid", :name => "payment[paid]"
      assert_select "input#payment_stamp_id", :name => "payment[stamp_id]"
    end
  end
end
