require 'spec_helper'

describe "weathers/index" do
  before(:each) do
    assign(:weathers, [
      stub_model(Weather,
        :min => "9.99",
        :max => "9.99"
      ),
      stub_model(Weather,
        :min => "9.99",
        :max => "9.99"
      )
    ])
  end

  it "renders a list of weathers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
