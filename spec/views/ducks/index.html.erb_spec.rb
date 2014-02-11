require 'spec_helper'

describe "ducks/index" do
  before(:each) do
    assign(:ducks, [
      stub_model(Duck,
        :name => "Name",
        :color => "Color",
        :sound => "Sound",
        :backback => false
      ),
      stub_model(Duck,
        :name => "Name",
        :color => "Color",
        :sound => "Sound",
        :backback => false
      )
    ])
  end

  it "renders a list of ducks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Sound".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
