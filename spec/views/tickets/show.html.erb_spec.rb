require 'spec_helper'

describe "tickets/show" do
  before(:each) do
    @ticket = assign(:ticket, stub_model(Ticket,
      :quantity => 1,
      :ticket_type => "Ticket Type",
      :fan_id => 2,
      :match_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Ticket Type/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
