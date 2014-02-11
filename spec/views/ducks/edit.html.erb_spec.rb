require 'spec_helper'

describe "ducks/edit" do
  before(:each) do
    @duck = assign(:duck, stub_model(Duck,
      :name => "MyString",
      :color => "MyString",
      :sound => "MyString",
      :backback => false
    ))
  end

  it "renders the edit duck form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", duck_path(@duck), "post" do
      assert_select "input#duck_name[name=?]", "duck[name]"
      assert_select "input#duck_color[name=?]", "duck[color]"
      assert_select "input#duck_sound[name=?]", "duck[sound]"
      assert_select "input#duck_backback[name=?]", "duck[backback]"
    end
  end
end
