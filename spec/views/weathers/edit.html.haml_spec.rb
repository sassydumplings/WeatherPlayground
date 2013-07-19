require 'spec_helper'

describe "weathers/edit" do
  before(:each) do
    @weather = assign(:weather, stub_model(Weather,
      :min => "9.99",
      :max => "9.99"
    ))
  end

  it "renders the edit weather form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", weather_path(@weather), "post" do
      assert_select "input#weather_min[name=?]", "weather[min]"
      assert_select "input#weather_max[name=?]", "weather[max]"
    end
  end
end
