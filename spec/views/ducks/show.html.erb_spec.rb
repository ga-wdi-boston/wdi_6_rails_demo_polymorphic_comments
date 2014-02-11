require 'spec_helper'

describe "ducks/show" do
  before(:each) do
    @duck = assign(:duck, stub_model(Duck,
      :name => "Name",
      :color => "Color",
      :sound => "Sound",
      :backback => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Sound/)
    expect(rendered).to match(/false/)
  end
end
