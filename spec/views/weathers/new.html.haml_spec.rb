require 'spec_helper'

describe "weathers/new" do
  before(:each) do
    assign(:weather, stub_model(Weather,
      :min => "9.99",
      :max => "9.99"
    ).as_new_record)
  end

  it "renders new weather form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", weathers_path, "post" do
      assert_select "input#weather_min[name=?]", "weather[min]"
      assert_select "input#weather_max[name=?]", "weather[max]"
    end
  end
end
